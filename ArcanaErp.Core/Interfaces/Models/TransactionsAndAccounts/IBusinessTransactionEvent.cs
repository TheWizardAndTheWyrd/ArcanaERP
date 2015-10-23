namespace ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts
{
    public interface IBusinessTransactionEvent : Lambda.Interfaces.IBaseErpModel,
                                                 Lambda.Interfaces.IBaseErpModelDescription,
                                                 Lambda.Interfaces.IBaseErpModelBusinessTransactionAccountRootId,
                                                 Lambda.Interfaces.IBaseErpModelBusinessTransactionEvent,
                                                 Lambda.Interfaces.IBaseErpModelEnteredDate,
                                                 Lambda.Interfaces.IBaseErpModelPostDate,
                                                 Lambda.Interfaces.IBaseErpModelExternalId
                                                 
    {
         
    }
}