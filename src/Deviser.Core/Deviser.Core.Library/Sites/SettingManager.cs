﻿using Autofac;
using Deviser.Core.Common.DomainTypes;
using Deviser.Core.Data.DataProviders;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Deviser.Core.Library.Sites
{
    public class SettingManager : ISettingManager
    {
        //Logger
        private readonly ILogger<ContentManager> logger;
        private ISiteSettingProvider siteSettingProvider;

        public SettingManager(ILifetimeScope container)
        {
            logger = container.Resolve<ILogger<ContentManager>>();
            siteSettingProvider = container.Resolve<ISiteSettingProvider>();
        }

        public SMTPSetting GetSMTPSetting()
        {
            try
            {
                var settings = siteSettingProvider.GetSettings();
                var serverPort = settings.First(s => s.SettingName == "SMTPServerAndPort").SettingValue;
                var ssl = settings.First(s => s.SettingName == "SMTPEnableSSL").SettingValue;
                var authenticationType = settings.First(s => s.SettingName == "SMTPAuthentication").SettingValue;
                var userName = settings.First(s => s.SettingName == "SMTPUsername").SettingValue;
                var password = settings.First(s => s.SettingName == "SMTPPassword").SettingValue;

                var result = new SMTPSetting()
                {
                    Server = !string.IsNullOrEmpty(serverPort.Split(':')[0]) ? serverPort.Split(':')[0] : "",
                    Port = !string.IsNullOrEmpty(serverPort.Split(':')[1]) ? int.Parse(serverPort.Split(':')[1]) : 25,
                    EnableSSL = !string.IsNullOrEmpty(ssl) ? bool.Parse(ssl) : false,
                    AuthenticationType = authenticationType,
                    Username = userName,
                    Password = password
                };
                return result;
            }
            catch (Exception ex)
            {
                logger.LogError("Error occured while calling Get", ex);
            }
            return null;
        }
    }
}
