namespace ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts
{
    public interface IBusinessTransactionAccountRelationship : Lambda.Interfaces.IBaseErpModel,
                                                               Lambda.Interfaces.IBaseErpModelBusinessTransactionAccountRelationshipTypeId,
                                                               Lambda.Interfaces.IBaseErpModelDescription,
                                                               Lambda.Interfaces.IBaseErpModelBusinessTransactionAccountRootTraffic,
                                                               Lambda.Interfaces.IBaseErpModelStatusTypeId,
                                                               Lambda.Interfaces.ITimeSpan
    {
         
    }
}