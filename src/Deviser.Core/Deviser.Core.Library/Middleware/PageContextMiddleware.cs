﻿using Autofac;
using Deviser.Core.Common;
using Deviser.Core.Common.DomainTypes;
using Deviser.Core.Data;
using Deviser.Core.Data.DataProviders;
using Deviser.Core.Library.Multilingual;
using Deviser.Core.Library.Services;
using Deviser.Core.Library.Sites;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Routing;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Deviser.Core.Common.Extensions;

namespace Deviser.Core.Library.Middleware
{
    /// <summary>
    /// It initialize the PageContext for every non /api requests
    /// </summary>
    public class PageContextMiddleware
    {
        private readonly RequestDelegate next;
        private readonly ILogger logger;
        private IRouter router;
        private RouteContext routeContext;
        private HttpContext httpContext;
        private IPageManager pageManager;
        private IModuleProvider moduleProvider;
        private ISettingManager settingManager;
        private PageContext pageContext;
        private ILanguageProvider languageProvider;
        private IInstallationProvider installationManager;

        //private IScopeService scopeService;

        //private DeviserDbContext deviserDbContext;

        //public PageContextMiddleware(RequestDelegate next,
        //    ILoggerFactory loggerFactory,
        //    IPageManager pageManager,
        //    IModuleProvider moduleProvider,
        //    ISettingManager settingManager,
        //    ILanguageProvider languageProvider,
        //    IInstallationProvider installationManager,
        //    IRouter router)
        //{
        //    this.next = next;
        //    this.router = router;
        //    this.pageManager = pageManager;
        //    this.moduleProvider = moduleProvider;
        //    this.settingManager = settingManager;
        //    this.languageProvider = languageProvider;
        //    this.installationManager = installationManager;

        //    logger = loggerFactory.CreateLogger<PageContextMiddleware>();
        //    pageContext = new PageContext();
        //}

        public PageContextMiddleware(RequestDelegate next,
            ILifetimeScope container,
            ILoggerFactory loggerFactory,            
            IRouter router)
        {
            this.next = next;
            this.router = router;

            installationManager = container.Resolve<IInstallationProvider>();
            //scopeService = container.Resolve<IScopeService>();
            if (installationManager.IsPlatformInstalled)
            {
                settingManager = container.Resolve<ISettingManager>();
                pageManager = container.Resolve<IPageManager>();
                moduleProvider = container.Resolve<IModuleProvider>(); ;
                languageProvider = container.Resolve<ILanguageProvider>();
                //deviserDbContext = container.Resolve<DeviserDbContext>();
            }

            logger = loggerFactory.CreateLogger<PageContextMiddleware>();
            pageContext = new PageContext();
        }

        public async Task Invoke(HttpContext context)
        {
            httpContext = context;
            bool isInstalled = installationManager.IsPlatformInstalled;

            if (isInstalled)
            {
                routeContext = new RouteContext(context);
                routeContext.RouteData.Routers.Add(router);
                await router.RouteAsync(routeContext);

                if (!context.Request.Path.Value.Contains("/api") && routeContext.RouteData.Values.Values.Count > 0)
                {
                    InitFirstLevel();
                    InitPageContext();
                    InitModuleContext();
                }
            }

            logger.LogInformation("Handling request: " + context.Request.Path);
            await next.Invoke(context);

            //deviserDbContext.RegisterForDispose(httpContext);

            logger.LogInformation("Finished handling request.");
        }

        private void InitFirstLevel()
        {
            try
            {
                pageContext.IsMultilingual = languageProvider.IsMultilingual();
                pageContext.SiteSettingInfo = settingManager.GetSiteSetting();

                var currentCulture = GetCurrentCulture();
                
                pageContext.CurrentCulture = currentCulture;

                Guid homePageId = pageContext.SiteSettingInfo.HomePageId;

                if (homePageId != Guid.Empty)
                {
                    pageContext.HomePage = pageManager.GetPage(homePageId);
                }
            }
            catch (Exception ex)
            {
                string errorMessage = string.Format("Error occured while initializing site ");
                logger.LogError(errorMessage, ex);
            }

        }

        /// <summary>
        /// This method initilizes the PageContext based on the RouteData or Query "permalink"
        /// </summary>
        /// <returns></returns>
        private void InitPageContext()
        {
            //permalink in the url has first preference
            string permalink = getPermalink(true);

            Page currentPage = null;

            if (string.IsNullOrEmpty(permalink))
            {
                currentPage = pageContext.HomePage;
            }
            else
            {
                string requestCulture = pageContext.CurrentCulture.ToString().ToLower();

                if (permalink.Contains(requestCulture) && !pageContext.IsMultilingual)
                    permalink = permalink.Replace(requestCulture + "/", "");

                currentPage = pageManager.GetPageByUrl(permalink, pageContext.CurrentCulture.ToString());
            }

            pageContext.CurrentPageId = currentPage.Id;
            pageContext.CurrentUrl = permalink;
            pageContext.CurrentPage = currentPage;
            pageContext.HasPageViewPermission = pageManager.HasViewPermission(currentPage);
            pageContext.HasPageEditPermission = pageManager.HasEditPermission(currentPage);


            if (!httpContext.Items.ContainsKey("PageContext"))
            {
                httpContext.Items.Add("PageContext", pageContext);
            }
            else
            {
                httpContext.Items["PageContext"] = pageContext;
            }
        }

        private void InitModuleContext()
        {
            object moduleName;
            object pageModuleId;
            var moduleContext = new ModuleContext();

            //scopeService.ModuleContext = moduleContext;


            if (routeContext.RouteData.Values.TryGetValue("area", out moduleName))
            {
                moduleContext.ModuleInfo = moduleProvider.Get((string)moduleName);
            }

            if (routeContext.RouteData.Values.TryGetValue("pageModuleId", out pageModuleId))
            {
                moduleContext.PageModuleId = Guid.Parse((string)pageModuleId);

                if (moduleContext.ModuleInfo == null)
                {
                    moduleContext.ModuleInfo = moduleProvider.GetModuleByPageModuleId(moduleContext.PageModuleId);
                }
            }

            if (moduleContext.ModuleInfo != null || moduleContext.PageModuleId != null)
            {
                if (!httpContext.Items.ContainsKey("ModuleContext"))
                {
                    httpContext.Items.Add("ModuleContext", moduleContext);
                }
                else
                {
                    httpContext.Items["ModuleContext"] = moduleContext;
                }
            }

        }

        private CultureInfo GetCurrentCulture()
        {
            var requestCultureFeature = httpContext.Features.Get<IRequestCultureFeature>();
            CultureInfo requestCulture = null;

            if (pageContext.IsMultilingual)
            {
                string permalink = getPermalink();
                var match = Regex.Match(permalink, @"[a-z]{2}-[a-z]{2}", RegexOptions.IgnoreCase);
                if (match.Success)
                {
                    requestCulture = new CultureInfo(match.Value);
                }
                else
                {
                    requestCulture = requestCultureFeature.RequestCulture.UICulture;
                }
            }
            else
            {
                //TODO: Assign default language from sitesettings
                requestCulture = requestCultureFeature.RequestCulture.UICulture; //Remove it
            }

            Globals.CurrentCulture = requestCulture;
            return requestCulture;
        }

        private string getPermalink(bool forPageContext = false)
        {
            //permalink in the url has first preference
            string permalink = (routeContext.RouteData.Values["permalink"] != null) ? routeContext.RouteData.Values["permalink"].ToString() : "";
            if (string.IsNullOrEmpty(permalink))
            {
                //if permalink is null, check for querystring
                permalink = httpContext.Request.Query["permalink"].ToString();
            }

            if (string.IsNullOrEmpty(permalink) && forPageContext)
            {
                permalink = pageContext.HomePageUrl;
            }
            return permalink;
        }
    }
}
