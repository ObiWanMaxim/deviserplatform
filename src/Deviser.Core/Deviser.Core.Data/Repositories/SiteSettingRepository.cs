using System;
using System.Collections.Generic;
using System.Linq;
using Deviser.Core.Common.DomainTypes;
using Microsoft.Extensions.Logging;
using Autofac;
using AutoMapper;

namespace Deviser.Core.Data.Repositories
{

    public interface ISiteSettingRepository
    {
        List<SiteSetting> GetSettings();
        string GetSettingValue(string settingName);
        List<SiteSetting> UpdateSetting(List<SiteSetting> settings);
    }

    public class SiteSettingRepository : RepositoryBase, ISiteSettingRepository
    {
        //Logger
        private readonly ILogger<SiteSettingRepository> _logger;

        //Constructor
        public SiteSettingRepository(ILifetimeScope container)
            :base(container)
        {
            _logger = container.Resolve<ILogger<SiteSettingRepository>>();
        }

        //Custom Field Declaration
        public List<SiteSetting> GetSettings()
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var result = context.SiteSetting.ToList();
                    return Mapper.Map<List<SiteSetting>>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while getting GetSettings", ex);
            }
            return null;
        }

        public string GetSettingValue(string settingName)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var setting = context.SiteSetting.FirstOrDefault(s=>s.SettingName==settingName);
                    if (setting != null)
                        return setting.SettingValue;
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while getting GetSettings", ex);
            }
            return null;
        }

        public List<SiteSetting> UpdateSetting(List<SiteSetting> settings)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var dbSettings = Mapper.Map<List<Entities.SiteSetting>>(settings);
                    context.SiteSetting.UpdateRange(dbSettings);
                    context.SaveChanges();
                    var result = context.SiteSetting.ToList();
                    if (result != null)
                        return Mapper.Map<List<SiteSetting>>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while updating settings", ex);
            }
            return null;
        }

    }

}//End namespace