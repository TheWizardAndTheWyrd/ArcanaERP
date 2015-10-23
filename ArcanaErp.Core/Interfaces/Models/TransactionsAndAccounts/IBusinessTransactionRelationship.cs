namespace ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts
{
    public interface IBusinessTransactionRelationship : Lambda.Interfaces.IBaseErpModel,
                                                        Lambda.Interfaces.IBaseErpModelBusinessTransactionRelationshipTypeId,
                                                        Lambda.Interfaces.IBaseErpModelDescription,
                                                        Lambda.Interfaces.ITimeSpan,
                                                        Lambda.Interfaces.IBaseErpModelStatusTypeId,
                                                        Lambda.Interfaces.IBaseErpModelTransactionEventTraffic
    {
         
    }
}