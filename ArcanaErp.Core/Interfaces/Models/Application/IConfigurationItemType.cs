using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfigurationItemType : Lambda.Interfaces.IBaseErpModel,
                                              Lambda.Interfaces.IBaseErpModelParentId,
                                              Lambda.Interfaces.IBaseErpModelLeftRightValues,
                                              Lambda.Interfaces.IBaseErpModelDescription,
                                              Lambda.Interfaces.IBaseErpModelInternalId,
                                              Lambda.Interfaces.IBaseErpModelConfigurationItemType
    {

    }
}