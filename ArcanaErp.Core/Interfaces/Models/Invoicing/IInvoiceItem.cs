namespace ArcanaErp.Core.Interfaces.Models.Invoicing
{
    public interface IInvoiceItem : Lambda.Interfaces.IBaseErpModel,
                                    Lambda.Interfaces.IBaseErpModelInvoiceId,
                                    Lambda.Interfaces.IBaseErpModelInvoiceItemTypeId,
                                    Lambda.Interfaces.IBaseErpModelItemSequenceId,
                                    Lambda.Interfaces.IBaseErpModelItemDescription,
                                    Lambda.Interfaces.IBaseErpModelSalesTax,
                                    Lambda.Interfaces.IBaseErpModelTaxable,
                                    Lambda.Interfaces.IBaseErpModelInvoiceItem,
                                    Lambda.Interfaces.IBaseErpModelAmount

    {
         
    }
}