namespace ArcanaErp.Core.Interfaces.Models.Orders
{
    public interface IOrderLineItemPartyRole : Lambda.Interfaces.IBaseErpModel,
                                               Lambda.Interfaces.IBaseErpModelRoleTypeId,
                                               Lambda.Interfaces.IBaseErpModelOrderLineItemId,
                                               Lambda.Interfaces.IBaseErpModelPartyId,
                                               Lambda.Interfaces.IBaseErpModelDescription,
                                               Lambda.Interfaces.IBaseErpModelBusinessTransactionAccountRootId
    {
         
    }
}