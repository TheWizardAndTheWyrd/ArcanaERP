namespace ArcanaErp.Core.Interfaces.Models.Orders
{
    public interface IOrderTransaction : Lambda.Interfaces.IBaseErpModel,
                                         Lambda.Interfaces.IBaseErpModelDescription,
                                         Lambda.Interfaces.IBaseErpModelOrderTransactionTypeId,
                                         Lambda.Interfaces.IBaseErpModelEmail,
                                         Lambda.Interfaces.IBaseErpModelOrderTransaction,
                                         Lambda.Interfaces.IBaseErpModelPaymentGatewayTransactionId,
                                         Lambda.Interfaces.IBaseErpModelCreditCardId,
                                         Lambda.Interfaces.IBaseErpModelSalesTax,
                                         Lambda.Interfaces.IBaseErpModelOrderTransactionRecordId
    {
         
    }
}