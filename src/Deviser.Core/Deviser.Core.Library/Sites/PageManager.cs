﻿using Autofac;
using Deviser.Core.Common;
using Deviser.Core.Data.DataProviders;
using Deviser.Core.Common.DomainTypes;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Deviser.Core.Library.Sites
{
    public class PageManager : IPageManager
    {
        //Logger
        private readonly ILogger<PageManager> logger;

        protected ILifetimeScope container;
        protected IPageProvider pageProvider;
        protected IHttpContextAccessor httpContextAccessor;
        protected IRoleProvider roleProvider;

        public PageManager(ILifetimeScope container)
        {
            this.container = container;
            logger = container.Resolve<ILogger<PageManager>>();
            pageProvider = container.Resolve<IPageProvider>();
            roleProvider = container.Resolve<IRoleProvider>();
            httpContextAccessor = container.Resolve<IHttpContextAccessor>();
        }

        protected bool IsUserAuthenticated
        {
            get
            {
                return httpContextAccessor.HttpContext.User.Identity.IsAuthenticated;
            }
        }

        protected string CurrentUserName
        {
            get
            {
                return (httpContextAccessor.HttpContext.User.Identity.IsAuthenticated) ? httpContextAccessor.HttpContext.User.Identity.Name : "";
            }
        }

        protected List<Role> CurrentUserRoles
        {
            get
            {
                return roleProvider.GetRoles(CurrentUserName);
            }
        }

        public Page GetPage(Guid pageId)
        {
            try
            {
                var returnData = pageProvider.GetPage(pageId);
                return returnData;
            }
            catch (Exception ex)
            {
                logger.LogError("Error occured while calling GetPage", ex);
            }
            return null;
        }

        public Page GetPageByUrl(string url, string locale)
        {
            Page resultPage = null;
            if (!string.IsNullOrEmpty(url))
            {
                var pageTranslation = pageProvider.GetPageTranslations(locale);
                var currentPageTranslation = pageTranslation.FirstOrDefault(p => (p != null && p.URL.ToLower() == url.ToLower()));
                if (currentPageTranslation != null)
                {
                    resultPage = pageProvider.GetPage(currentPageTranslation.PageId);
                }
            }
            return resultPage;
        }

        public bool HasViewPermission(Page page)
        {
            if (page != null && page.PagePermissions != null)
            {
                return (page.PagePermissions.Any(pagePermission => pagePermission.PermissionId == Globals.PageViewPermissionId &&
               (pagePermission.RoleId == Globals.AllUsersRoleId || (IsUserAuthenticated && CurrentUserRoles.Any(role => role.Id == pagePermission.RoleId)))));
            }
            return false;
        }

        public bool HasEditPermission(Page page)
        {
            if (page != null && page.PagePermissions != null)
            {
                return (page.PagePermissions.Any(pagePermission => pagePermission.PermissionId == Globals.PageEditPermissionId &&
               (pagePermission.RoleId == Globals.AllUsersRoleId || (IsUserAuthenticated && CurrentUserRoles.Any(role => role.Id == pagePermission.RoleId)))));
            }
            return false;
        }
    }
}
