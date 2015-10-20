﻿using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementType : Lambda.Interfaces.IBaseErpModel,
                                      Lambda.Interfaces.IBaseErpModelParentId,
                                      Lambda.Interfaces.IBaseErpModelLeftRightValues,
                                      Lambda.Interfaces.IBaseErpModelDescription,
                                      Lambda.Interfaces.IBaseErpModelComments,
                                      Lambda.Interfaces.IBaseErpModelInternalId,
                                      Lambda.Interfaces.IBaseErpModelExternalId
    {

    }
}