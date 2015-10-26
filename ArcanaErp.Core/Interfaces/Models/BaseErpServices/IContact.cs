using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IContact : Lambda.Interfaces.IBaseErpModel,
                                Lambda.Interfaces.IBaseErpModelBillingContactMechanism,
                                Lambda.Interfaces.IBaseErpModelExternalId,
                                Lambda.Interfaces.IBaseErpModelContact
    {

    }
}