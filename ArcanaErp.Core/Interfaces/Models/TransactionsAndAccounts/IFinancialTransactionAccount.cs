namespace ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts
{
    public interface IFinancialTransactionAccount : Lambda.Interfaces.IBaseErpModel,
                                                    Lambda.Interfaces.IBaseErpModelFinancialTransactionAccount,
                                                    Lambda.Interfaces.IBaseErpModelAgreementId,
                                                    Lambda.Interfaces.IBaseErpModelBalanceId,
                                                    Lambda.Interfaces.IBaseErpModelFinancialAccountId,
                                                    Lambda.Interfaces.IBaseErpModelFinancialAccountType
    {
         
    }
}