﻿using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreement : Lambda.Interfaces.IBaseErpModel,
                                  Lambda.Interfaces.IBaseErpModelExternalId,
                                  Lambda.Interfaces.IBaseErpModelDescription,
                                  Lambda.Interfaces.IBaseErpModelAgreement,
                                  Lambda.Interfaces.IBaseErpModelProduct,
                                  Lambda.Interfaces.ITimeSpan
    {

    }
}