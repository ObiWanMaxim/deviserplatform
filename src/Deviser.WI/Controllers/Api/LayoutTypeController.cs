﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using Deviser.Core.Common.DomainTypes;
using Deviser.Core.Data.DataProviders;
using Deviser.Core.Data.Entities;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Autofac;
using Microsoft.Extensions.PlatformAbstractions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Hosting;
using AutoMapper;

namespace DeviserWI.Controllers.API
{
    [Route("api/[controller]")]
    public class LayoutTypeController : Controller
    {
        private readonly ILogger<LayoutTypeController> logger;


        private ILayoutTypeProvider layoutTypeProvider;

        //private JToken contentTypes;
        private List<string> rootAllowedTypes;
        public LayoutTypeController(ILifetimeScope container)
        {
            logger = container.Resolve<ILogger<LayoutTypeController>>();
            layoutTypeProvider = container.Resolve<ILayoutTypeProvider>();
            IHostingEnvironment hostingEnvironment = container.Resolve<IHostingEnvironment>();
            try
            {
                var contentTypesfilePath = Path.Combine(hostingEnvironment.ContentRootPath, "appcontentcofig.json");                
                JObject contentConfig = JObject.Parse(System.IO.File.ReadAllText(contentTypesfilePath));
                //contentTypes = (JArray)contentConfig.SelectToken("layoutTypes");
                rootAllowedTypes = contentConfig.SelectToken("rootLayoutTypes").ToObject<List<string>>();
            }
            catch
            {
                throw;
            }
        }

        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                var layoutTypes = layoutTypeProvider.GetLayoutTypes();
                var result = Mapper.Map<List<Deviser.Core.Common.DomainTypes.LayoutType>>(layoutTypes);
                if (result != null)
                    return Ok(result);
                return NotFound();
            }
            catch (Exception ex)
            {
                logger.LogError(string.Format("Error occured while getting layout types"), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }

        [HttpGet]
        [Route("rootallowedtypes")]
        public IActionResult GetRootAllowedTypes()
        {
            try
            {
                if (rootAllowedTypes != null)
                    return Ok(rootAllowedTypes);
                return NotFound();
            }
            catch (Exception ex)
            {
                logger.LogError(string.Format("Error occured while getting root allowed types"), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }
    }
}
