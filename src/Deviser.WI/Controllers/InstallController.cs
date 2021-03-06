﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.IO;
using Deviser.Core.Common.DomainTypes;
using Deviser.Core.Data;
using Deviser.Core.Common;
using Deviser.Core.Data.Repositories;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json.Linq;
using static Deviser.WI.Program;
using Microsoft.AspNetCore.Http;

namespace Deviser.WI.Controllers
{
    public class InstallController : Controller
    {
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly IInstallationProvider _installationProvider;
        private readonly IConfiguration _configuration;

        public InstallController(IHostingEnvironment hostingEnvironment, 
            IInstallationProvider installationProvider,
            IConfiguration configuration)
        {
            _hostingEnvironment = hostingEnvironment;
            _installationProvider = installationProvider;
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            if (_installationProvider.IsPlatformInstalled)
                return RedirectToAction("Index", "Home");

            var installModel = new InstallModel
            {
                DatabaseProvider = DatabaseProvider.SQLite,
                //ServerName = "(localdb)\\mssqllocaldb",
                IsIntegratedSecurity = true
            };

            return View(installModel);
        }

        public IActionResult Terms()
        {
            return View();
        }

        public IActionResult License()
        {
            return View("Terms");
        }

        [HttpPost]
        public IActionResult Index(InstallModel installModel)
        {
            if (_installationProvider.IsPlatformInstalled)
                return new StatusCodeResult(StatusCodes.Status405MethodNotAllowed);

            if (ModelState.IsValid)
            {
                string connectionString = _installationProvider.GetConnectionString(installModel);
                string settingFile = Path.Combine(_hostingEnvironment.ContentRootPath, $"appsettings.{_hostingEnvironment.EnvironmentName}.json");

                try
                {
                    _installationProvider.InstallPlatform(installModel);
                    ApplicationManager.Instance.Restart();
                    return Ok();
                }
                catch (SqlException ex)
                {
                    string error = $"Invalid connection to database, kindly check the connection string parameters: {ex.Message}";
                    ModelState.AddModelError("", error);
                    return new ObjectResult(error)
                    {
                        StatusCode = StatusCodes.Status400BadRequest
                    };
                }
                catch (Exception ex)
                {
                    string error = ex.Message;
                    ModelState.AddModelError("", error);
                    return new ObjectResult(error)
                    {
                        StatusCode = StatusCodes.Status400BadRequest
                    };
                }

            }
            return new StatusCodeResult(StatusCodes.Status400BadRequest);
        }

        public IActionResult Success()
        {
            return View();
        }
    }    
}