using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfigurationOption : Lambda.Interfaces.IBaseErpModel,
                                            Lambda.Interfaces.IBaseErpModelDescription,
                                            Lambda.Interfaces.IBaseErpModelInternalId,
                                            Lambda.Interfaces.IBaseErpModelComments,
                                            Lambda.Interfaces.IBaseErpModelConfigurationOption
    {

    }
}