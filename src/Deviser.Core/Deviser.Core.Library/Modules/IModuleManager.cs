﻿using Deviser.Core.Data.Entities;
using System;
using System.Collections.Generic;

namespace Deviser.Core.Library.Modules
{
    public interface IModuleManager
    {
        List<PageModule> GetPageModuleByPage(Guid pageId);
        PageContent CreatePageContent(PageContent pageContent);
        PageModule CreatePageModule(PageModule pageModule);
        void UpdatePageModules(List<PageModule> pageModules);
    }
}