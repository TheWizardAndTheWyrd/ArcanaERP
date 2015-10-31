namespace ArcanaErp.Core.Interfaces.Models.Invoicing
{
    public interface IInvoicedRecord : Lambda.Interfaces.IBaseErpModel,
                                       Lambda.Interfaces.IBaseErpModelInvoiceItemId,
                                       Lambda.Interfaces.IBaseErpModelInvoiceableItemId,
                                       Lambda.Interfaces.IBaseErpModelInvoiceableItemType
    {
         
    }
}