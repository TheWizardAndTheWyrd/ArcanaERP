using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IParty : Lambda.Interfaces.IBaseErpModel,
                              Lambda.Interfaces.IBaseErpModelDescription,
                              Lambda.Interfaces.IBaseErpModelBusinessPartyId,
                              Lambda.Interfaces.IBaseErpModelBusinessPartyType,
                              Lambda.Interfaces.IBaseErpModelListViewImageId,
                              Lambda.Interfaces.IBaseErpModelEnterpriseIdentifier
    {

    }
}