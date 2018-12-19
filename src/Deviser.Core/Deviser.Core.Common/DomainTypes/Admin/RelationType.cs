﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Deviser.Core.Common.DomainTypes.Admin
{
    public enum RelationType
    {
        None = 0,
        OneToOne = 1,
        OneToMany = 2,
        ManyToOne = 3,
        ManyToMany = 4
    }
}
