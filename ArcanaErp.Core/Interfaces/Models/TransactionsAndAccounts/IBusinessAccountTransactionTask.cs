namespace ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts
{
    public interface IBusinessAccountTransactionTask : Lambda.Interfaces.IBaseErpModel,
                                                       Lambda.Interfaces.IBaseErpModelDescription,
                                                       Lambda.Interfaces.IBaseErpModelComments,
                                                       Lambda.Interfaces.IBaseErpModelBusinessTransactionTaskId,
                                                       Lambda.Interfaces.IBaseErpModelBusinessBusinessTransactionAccountId,
                                                       Lambda.Interfaces.IBaseErpModelEnteredDate,
                                                       Lambda.Interfaces.IBaseErpModelRequestedDate
    {
         
    }
}