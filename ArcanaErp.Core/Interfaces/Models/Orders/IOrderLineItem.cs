namespace ArcanaErp.Core.Interfaces.Models.Orders
{
    public interface IOrderLineItem : Lambda.Interfaces.IBaseErpModel,
                                      Lambda.Interfaces.IBaseErpModelSalesTax,
                                      Lambda.Interfaces.IBaseErpModelInvoiceItem,
                                      Lambda.Interfaces.IBaseErpModelOrderTransactionId,
                                      Lambda.Interfaces.IBaseErpModelOrderLineItemTypeId,
                                      Lambda.Interfaces.IBaseErpModelProductInstanceId,
                                      Lambda.Interfaces.IBaseErpModelOrderLineItem,
                                      Lambda.Interfaces.IBaseErpModelProductTypeId,
                                      Lambda.Interfaces.IBaseErpModelProductOfferId,
                                      Lambda.Interfaces.IBaseErpModelUnitOfMeasurementId
    {
         
    }
}