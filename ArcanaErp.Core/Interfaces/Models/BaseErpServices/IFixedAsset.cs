using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFixedAsset : Lambda.Interfaces.IBaseErpModel,
                                   Lambda.Interfaces.IBaseErpModelDescription,
                                   Lambda.Interfaces.IBaseErpModelComments,
                                   Lambda.Interfaces.IBaseErpModelInternalId,
                                   Lambda.Interfaces.IBaseErpModelExternalId,
                                   Lambda.Interfaces.IBaseErpModelFixedAssetTypeId,
                                   Lambda.Interfaces.IBaseErpModelFixedAsset
                                
    {

    }
}