﻿using Autofac;
using Deviser.Core.Data.Repositories;
using Deviser.Core.Common.DomainTypes;
using Deviser.Core.Library;
using Deviser.Core.Library.Extensions;
using Deviser.Core.Library.Services;
using Deviser.WI.ViewModels.Components;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;

namespace Deviser.WI.ViewComponents
{
    [ViewComponent(Name = "LanguageSwitcher")]
    public class LanguageSwitcher : DeviserViewComponent
    {
        private ILanguageRepository _languageRepository;
        private readonly IScopeService _scopeService;
        public LanguageSwitcher(IScopeService scopeService, ILifetimeScope container)
            :base(scopeService)
        {
            _languageRepository = container.Resolve<ILanguageRepository>();
            _scopeService = scopeService;
        }

        public override async Task<IViewComponentResult> InvokeAsync()
        {
            var languages = _languageRepository.GetLanguages();
            languages = languages.Where(l => l.IsActive).ToList();
            List<LanguageViewModel> viewModel = new List<LanguageViewModel>();
            foreach (var lang in languages)
            {
                viewModel.Add(new LanguageViewModel
                {
                    Culture = new CultureInfo(lang.CultureCode),
                    EnglishName = lang.EnglishName,
                    NativeName = lang.NativeName,
                    Url = GetLocalizedUrl(lang.CultureCode),
                    IsActive = lang.CultureCode.ToLower() == _scopeService.PageContext.CurrentCulture.ToString().ToLower()
                });
            }
            return View(viewModel);
        }

        private string GetLocalizedUrl(string cultureCode)
        {
            if (_scopeService.PageContext != null && _scopeService.PageContext.CurrentPage != null && _scopeService.PageContext.CurrentPage.PageTranslation != null)
            {
                PageTranslation translation = null;
                if (_scopeService.PageContext.CurrentPage.PageTranslation.Any(t => t.Locale.ToLower() == cultureCode.ToLower()))
                {
                    translation = _scopeService.PageContext.CurrentPage.PageTranslation.Get(cultureCode.ToLower());
                    return "/" + translation.URL;
                }
            }
            return "";
        }
    }
}
