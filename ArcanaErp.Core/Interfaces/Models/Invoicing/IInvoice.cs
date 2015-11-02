namespace ArcanaErp.Core.Interfaces.Models.Invoicing
{
    public interface IInvoice : Lambda.Interfaces.IBaseErpModel,
                                Lambda.Interfaces.IBaseErpModelDescription,
                                Lambda.Interfaces.IBaseErpModelExternalId,
                                Lambda.Interfaces.IBaseErpModelProductId,
                                Lambda.Interfaces.IBaseErpModelInvoiceTypeId,
                                Lambda.Interfaces.IBaseErpModelBillingAccountId,
                                Lambda.Interfaces.IBaseErpModelInvoicePaymentStrategyTypeId,
                                Lambda.Interfaces.IBaseErpModelBalanceId,
                                Lambda.Interfaces.IBaseErpModelCalculateBalanceStrategyTypeId,
                                Lambda.Interfaces.IBaseErpModelSalesTax,
                                Lambda.Interfaces.IBaseErpModelInvoice,
                                Lambda.Interfaces.IBaseErpModelMessage
    {
         
    }
}