﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Deviser.Core.Library.DomainTypes
{
    public class LayoutType
    {
        public Guid Id { get; set; }
        public string Name { get; set; } //old property - Type
        public string Label { get; set; }
        public string IconImage { get; set; }
        public string IconClass { get; set; }
        public string LayoutTypeIds { get; set; }
        public ICollection<Property> Properties { get; set; }
    }
}
