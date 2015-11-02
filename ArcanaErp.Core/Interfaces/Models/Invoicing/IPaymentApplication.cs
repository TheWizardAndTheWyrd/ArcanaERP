namespace ArcanaErp.Core.Interfaces.Models.Invoicing
{
    public interface IPaymentApplication : Lambda.Interfaces.IBaseErpModel,
                                           Lambda.Interfaces.IBaseErpModelFinancialTransactionId,
                                           Lambda.Interfaces.IBaseErpModelComments,
                                           Lambda.Interfaces.IBaseErpModelPaymentAppliedToId,
                                           Lambda.Interfaces.IBaseErpModelPaymentAppliedToType,
                                           Lambda.Interfaces.IBaseErpModelAppliedMoneyAmountId
    {
         
    }
}