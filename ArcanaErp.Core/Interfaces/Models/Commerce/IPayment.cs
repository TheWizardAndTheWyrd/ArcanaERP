namespace ArcanaErp.Core.Interfaces.Models.Commerce
{
    public interface IPayment : Lambda.Interfaces.IBaseErpModel,
                                Lambda.Interfaces.IBaseErpModelFinancialTransactionId,
                                Lambda.Interfaces.IBaseErpModelCurrentState,
                                Lambda.Interfaces.IBaseErpModelExternalId,
                                Lambda.Interfaces.IBaseErpModelPayment
    {
         
    }
}