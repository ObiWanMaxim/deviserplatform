﻿using Autofac;
using AutoMapper;
using Deviser.Core.Data.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;

namespace Deviser.Core.Data.DataProviders
{
    public class DataProviderBase
    {

        protected DbContextOptions<DeviserDbContext> DbOptions;
        protected ILifetimeScope Container;
        private readonly ILogger<DataProviderBase> _logger;

        public DataProviderBase(ILifetimeScope container)
        {
            this.Container = container;
            DbOptions = container.Resolve<DbContextOptions<DeviserDbContext>>();
            _logger = container.Resolve<ILogger<DataProviderBase>>();

        }

        public DomainType CreateContentControl<DomainType, DbType>(DomainType contentControl)
            where DomainType:class where DbType:class
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var dbContentControl = Mapper.Map<DbType>(contentControl);
                    //dbContentControl.Id = Guid.NewGuid();
                    //dbContentControl.CreatedDate = dbContentControl.LastModifiedDate = DateTime.Now;
                    var result = context.Add(dbContentControl);
                    context.SaveChanges();
                    return Mapper.Map<DomainType>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while creating ContentControl", ex);
            }
            return null;
        }

    }
}
