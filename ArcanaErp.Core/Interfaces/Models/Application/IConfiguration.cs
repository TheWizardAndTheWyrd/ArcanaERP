using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfiguration : Lambda.Interfaces.IBaseErpModel,
                                      Lambda.Interfaces.IBaseErpModelDescription,
                                      Lambda.Interfaces.IBaseErpModelInternalId,
                                      Lambda.Interfaces.IBaseErpModelActive,
                                      Lambda.Interfaces.IBaseErpModelIsTemplateText
    {

    }
}