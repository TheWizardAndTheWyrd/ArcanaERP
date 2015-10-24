namespace ArcanaErp.Core.Interfaces.Models.Orders
{
    public interface IChargeLine : Lambda.Interfaces.IBaseErpModel,
                                   Lambda.Interfaces.IBaseErpModelChargeLine,
                                   Lambda.Interfaces.IBaseErpModelMoneyId,
                                   Lambda.Interfaces.IBaseErpModelDescription,
                                   Lambda.Interfaces.IBaseErpModelExternalId,
                                   Lambda.Interfaces.IBaseErpModelSalesTax
    {
         
    }
}