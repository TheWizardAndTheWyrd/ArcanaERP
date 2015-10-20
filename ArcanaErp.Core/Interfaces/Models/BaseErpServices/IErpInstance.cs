using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IErpInstance : Lambda.Interfaces.IBaseErpModel,
                                    Lambda.Interfaces.IBaseErpModelDescription,
                                    Lambda.Interfaces.IBaseErpModelInternalId,
                                    Lambda.Interfaces.IBaseErpModelParentId,
                                    Lambda.Interfaces.IBaseErpModelType,
                                    Lambda.Interfaces.IBaseErpModelErpInstance
    {

    }
}