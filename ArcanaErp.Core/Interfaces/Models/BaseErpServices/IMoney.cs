using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IMoney : Lambda.Interfaces.IBaseErpModel,
                              Lambda.Interfaces.IBaseErpModelDescription,
                              Lambda.Interfaces.IBaseErpModelAmount,
                              Lambda.Interfaces.IBaseErpModelCurrencyId
    {

    }
}