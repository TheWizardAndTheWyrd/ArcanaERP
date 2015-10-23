namespace ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts
{
    public interface IBusinessTransactionAccountPartyRole : Lambda.Interfaces.IBaseErpModel,
                                                            Lambda.Interfaces.IBaseErpModelDescription,
                                                            Lambda.Interfaces.IBaseErpModelBusinessTransactionAccountRootId,
                                                            Lambda.Interfaces.IBaseErpModelPartyId,
                                                            Lambda.Interfaces.IBaseErpModelBusinessTransactionAccountPartyTypeId,
                                                            Lambda.Interfaces.IBaseErpModelIsDefaultBillingAccountFlag
    {
         
    }
}