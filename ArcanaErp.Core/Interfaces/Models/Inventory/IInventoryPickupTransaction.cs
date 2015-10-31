namespace ArcanaErp.Core.Interfaces.Models.Inventory
{
    public interface IInventoryPickupTransaction : Lambda.Interfaces.IBaseErpModel,
                                                   Lambda.Interfaces.IBaseErpModelFixedAssetId,
                                                   Lambda.Interfaces.IBaseErpModelDescription,
                                                   Lambda.Interfaces.IBaseErpModelInventoryTransaction,
                                                   Lambda.Interfaces.IBaseErpModelUnitOfMeasurementId,
                                                   Lambda.Interfaces.IBaseErpModelComments,
                                                   Lambda.Interfaces.IBaseErpModelInventoryEntryId
    {
         
    }
}