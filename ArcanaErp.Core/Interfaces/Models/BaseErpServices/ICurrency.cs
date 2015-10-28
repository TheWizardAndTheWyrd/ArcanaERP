using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface ICurrency : Lambda.Interfaces.IBaseErpModel,
                                 Lambda.Interfaces.IBaseErpModelName,
                                 Lambda.Interfaces.IBaseErpModelInternalId,
                                 Lambda.Interfaces.IBaseErpModelCurrency,
                                 Lambda.Interfaces.IBaseErpModelIntroductionAndExpirationSpan
    {

    }
}