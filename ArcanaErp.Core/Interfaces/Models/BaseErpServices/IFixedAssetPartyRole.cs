using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFixedAssetPartyRole : Lambda.Interfaces.IBaseErpModel,
                                            Lambda.Interfaces.IBaseErpModelPartyId,
                                            Lambda.Interfaces.IBaseErpModelFixedAssetId,
                                            Lambda.Interfaces.IBaseErpModelRoleTypeId
                                       
    {

    }
}