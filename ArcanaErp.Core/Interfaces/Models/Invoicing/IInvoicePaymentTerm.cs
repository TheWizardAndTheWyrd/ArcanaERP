namespace ArcanaErp.Core.Interfaces.Models.Invoicing
{
    public interface IInvoicePaymentTerm : Lambda.Interfaces.IBaseErpModel,
                                           Lambda.Interfaces.IBaseErpModelInvoicePaymentTermTypeId,
                                           Lambda.Interfaces.IBaseErpModelInvoicePaymentTermSetId,
                                           Lambda.Interfaces.IBaseErpModelDescription,
                                           Lambda.Interfaces.IBaseErpModelPayBy,
                                           Lambda.Interfaces.IBaseErpModelAmount
    {
         
    }
}