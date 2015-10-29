using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IGeoCountry : Lambda.Interfaces.IBaseErpModel,
                                   Lambda.Interfaces.IBaseErpModelName,
                                   Lambda.Interfaces.IBaseErpModelExternalId,
                                   Lambda.Interfaces.IBaseErpModelGeoCountry,
                                   Lambda.Interfaces.IBaseErpModelShouldDisplay
    {

    }
}