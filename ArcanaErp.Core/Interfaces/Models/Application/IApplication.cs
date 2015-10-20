using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IApplication : Lambda.Interfaces.IBaseErpModel,
                                    Lambda.Interfaces.IBaseErpModelDescription,
                                    Lambda.Interfaces.IBaseErpModelInternalId,
                                    Lambda.Interfaces.IBaseErpModelIcon,
                                    Lambda.Interfaces.IBaseErpModelType,
                                    Lambda.Interfaces.IBaseErpModelCanDelete
    {

    }
}