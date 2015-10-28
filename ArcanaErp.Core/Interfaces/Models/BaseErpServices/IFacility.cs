using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFacility : Lambda.Interfaces.IBaseErpModel,
                                 Lambda.Interfaces.IBaseErpModelDescription,
                                 Lambda.Interfaces.IBaseErpModelInternalId,
                                 Lambda.Interfaces.IBaseErpModelPostalAddressId,
                                 Lambda.Interfaces.IBaseErpModelFacility
    {

    }
}