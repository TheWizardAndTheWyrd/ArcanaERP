using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IPostalAddress : Lambda.Interfaces.IBaseErpModel,
                                      Lambda.Interfaces.IBaseErpModelGeoCountryId,
                                      Lambda.Interfaces.IBaseErpModelGeoZoneId,
                                      Lambda.Interfaces.IBaseErpModelPostalAddress,
                                      Lambda.Interfaces.IBaseErpModelDescription
    {

    }
}