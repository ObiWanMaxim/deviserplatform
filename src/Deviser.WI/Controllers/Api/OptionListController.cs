﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Deviser.Core.Data.Repositories;
using Microsoft.Extensions.Logging;
using Autofac;
using AutoMapper;
using Microsoft.AspNetCore.Http;

// For more information on enabling Web API for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace Deviser.WI.Controllers.Api
{
    [Route("api/[controller]")]
    public class OptionListController : Controller
    {
        private readonly ILogger<OptionListController> _logger;
        private readonly IOptionListRepository _optionListRepository;
        public OptionListController(ILifetimeScope container)
        {
            _logger = container.Resolve<ILogger<OptionListController>>();
            _optionListRepository = container.Resolve<IOptionListRepository>();
        }

        [HttpGet]
        public IActionResult GetOptionList()
        {
            try
            {
                var result = _optionListRepository.GetOptionLists();

                if (result != null)
                    return Ok(result);
                return NotFound();
            }
            catch (Exception ex)
            {
                _logger.LogError(string.Format("Error occured while getting option lists"), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }

        [HttpPost]
        public IActionResult CreateOptionList([FromBody]Deviser.Core.Common.DomainTypes.OptionList optionList)
        {
            try
            {
                if (optionList == null || string.IsNullOrEmpty(optionList.Name))
                    return BadRequest("Invalid parameter");

                if (_optionListRepository.GetOptionList(optionList.Name) != null)
                    return BadRequest("Option list already exist");
                
                var result = _optionListRepository.CreateOptionList(optionList);
                if (result != null)
                    return Ok(result);
                return NotFound();
            }
            catch (Exception ex)
            {
                _logger.LogError(string.Format("Error occured while creating option list"), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }

        [HttpPut]
        public IActionResult UpdateOptionList([FromBody]Deviser.Core.Common.DomainTypes.OptionList contentType)
        {
            try
            {
                var result = _optionListRepository.UpdateOptionList(contentType);
                if (result != null)
                    return Ok(result);
                return NotFound();
            }
            catch (Exception ex)
            {
                _logger.LogError(string.Format("Error occured while updating option list"), ex);
                return new StatusCodeResult(StatusCodes.Status500InternalServerError);
            }
        }
    }
}
