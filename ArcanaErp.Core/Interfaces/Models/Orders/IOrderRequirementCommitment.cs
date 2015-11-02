namespace ArcanaErp.Core.Interfaces.Models.Orders
{
    public interface IOrderRequirementCommitment : Lambda.Interfaces.IBaseErpModel,
                                                   Lambda.Interfaces.IBaseErpModelOrderLineItemId,
                                                   Lambda.Interfaces.IBaseErpModelRequirementId,
                                                   Lambda.Interfaces.IBaseErpModelDescription,
                                                   Lambda.Interfaces.IBaseErpModelInventoryTransaction
    {
         
    }
}