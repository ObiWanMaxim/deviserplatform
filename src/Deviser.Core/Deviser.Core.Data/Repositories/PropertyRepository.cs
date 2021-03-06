﻿using Autofac;
using Deviser.Core.Common.DomainTypes;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using AutoMapper;

namespace Deviser.Core.Data.Repositories
{
    public interface IPropertyRepository
    {
        Property CreateProperty(Property dbProperty);
        List<Property> GetProperties();
        Property GetProperty(Guid propertyId);
        Property UpdateProperty(Property dbProperty);
    }

    public class PropertyRepository : RepositoryBase, IPropertyRepository
    {
        //Logger
        private readonly ILogger<PropertyRepository> _logger;

        //Constructor
        public PropertyRepository(ILifetimeScope container)
            : base(container)
        {
            _logger = container.Resolve<ILogger<PropertyRepository>>();
        }

        public Property CreateProperty(Property property)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var dbProperty = Mapper.Map<Entities.Property>(property);
                    dbProperty.CreatedDate = dbProperty.LastModifiedDate = DateTime.Now;
                    var result = context.Property.Add(dbProperty).Entity;
                    context.SaveChanges();
                    return Mapper.Map<Property>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while creating a property", ex);
            }
            return null;
        }

        public Property GetProperty(Guid propertyId)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var result = context.Property.Where(e => e.Id == propertyId)
                        .Include(p => p.OptionList)
                               .FirstOrDefault();
                    return Mapper.Map<Property>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while getting Property by id", ex);
            }
            return null;
        }

        public List<Property> GetProperties()
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var result = context.Property
                        .Include(p => p.OptionList)
                        .ToList();
                    return Mapper.Map<List<Property>>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while getting Properties", ex);
            }
            return null;
        }

        public Property UpdateProperty(Property property)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var dbProperty = Mapper.Map<Entities.Property>(property);
                    //property.LastModifiedDate = DateTime.Now;
                    var result = context.Property.Update(dbProperty).Entity;
                    context.SaveChanges();
                    return Mapper.Map<Property>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while updating OptionList", ex);
            }
            return null;
        }
    }
}
