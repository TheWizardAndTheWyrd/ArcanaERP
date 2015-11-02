namespace ArcanaErp.Core.Interfaces.Models.Orders
{
    public interface IOrderLineItemRelationship : Lambda.Interfaces.IBaseErpModel,
                                                  Lambda.Interfaces.IBaseErpModelDescription,
                                                  Lambda.Interfaces.IBaseErpModelStatusTypeId,
                                                  Lambda.Interfaces.IBaseErpModelOrderLineItemTraffic,
                                                  Lambda.Interfaces.IBaseErpModelOrderLineItemRelationshipTypeId,
                                                  Lambda.Interfaces.ITimeSpan
    {
         
    }
}