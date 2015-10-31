namespace ArcanaErp.Core.Interfaces.Models.Inventory
{
    public interface IInventoryEntry : Lambda.Interfaces.IBaseErpModel,
                                       Lambda.Interfaces.IBaseErpModelDescription,
                                       Lambda.Interfaces.IBaseErpModelInventoryEntryRecordId,
                                       Lambda.Interfaces.IBaseErpModelInventoryEntry,
                                       Lambda.Interfaces.IBaseErpModelExternalId,
                                       Lambda.Interfaces.IBaseErpModelProductTypeId,
                                       Lambda.Interfaces.IBaseErpModelSku,
                                       Lambda.Interfaces.IBaseErpModelUnitOfMeasurementId
    {
         
    }
}