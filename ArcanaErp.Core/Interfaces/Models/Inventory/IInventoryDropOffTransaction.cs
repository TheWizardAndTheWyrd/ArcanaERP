namespace ArcanaErp.Core.Interfaces.Models.Inventory
{
    public interface IInventoryDropOffTransaction : Lambda.Interfaces.IBaseErpModel,
                                                    Lambda.Interfaces.IBaseErpModelDescription,
                                                    Lambda.Interfaces.IBaseErpModelFixedAssetId,
                                                    Lambda.Interfaces.IBaseErpModelInventoryTransaction,
                                                    Lambda.Interfaces.IBaseErpModelComments,
                                                    Lambda.Interfaces.IBaseErpModelUnitOfMeasurementId,
                                                    Lambda.Interfaces.IBaseErpModelInventoryEntryId
    {
         
    }
}