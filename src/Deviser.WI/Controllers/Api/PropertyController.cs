using Autofac;
using Deviser.Core.Data.Repositories;
using Deviser.Core.Common.DomainTypes;
using Deviser.Core.Library.Layouts;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using AutoMapper;
using Property = Deviser.Core.Common.DomainTypes.Property;

namespace Deviser.WI.Controllers.Api
{
    [Route("api/[controller]")]
    public class PropertyController : Controller
    {
        private readonly ILogger<PropertyController> _logger;
        private readonly IPropertyRepository _propertyRepository;

        public PropertyController(ILifetimeScope container)
        {            
            _logger = container.Resolve<ILogger<PropertyController>>();
            _propertyRepository = container.Resolve<IPropertyRepository>();
        }

        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                var result = _propertyRepository.GetProperties();
                if (result != null)
                    return Ok(result);
                return NotFound();
            }
            catch (Exception ex)
            {
                _logger.LogError(string.Format("Error occured while getting properties"), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }

        [HttpGet("{id}")]
        public IActionResult Get(Guid id)
        {
            try
            {
                var result = _propertyRepository.GetProperty(id);
                if (result != null)
                    return Ok(result);
                return NotFound();
            }
            catch (Exception ex)
            {
                _logger.LogError(string.Format("Error occured while getting property: {0}", id), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }

        [HttpPost]
        public IActionResult Post([FromBody]Property property)
        {
            try
            {
                var result = _propertyRepository.CreateProperty(property);
                if (result != null)
                    return Ok(result);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
            catch (Exception ex)
            {
                _logger.LogError(string.Format("Error occured while creating a property, propertyName: {0}", property.Name), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }

        [HttpPut]
        public IActionResult Put([FromBody]Property property)
        {
            try
            {
                var result = _propertyRepository.UpdateProperty(property);
                if (result != null)
                    return Ok(result);
                return BadRequest();
            }
            catch (Exception ex)
            {
                _logger.LogError(string.Format("Error occured while updating property, LayoutName: ", property.Name), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }
    }
}