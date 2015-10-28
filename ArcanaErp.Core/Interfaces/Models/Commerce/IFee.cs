namespace ArcanaErp.Core.Interfaces.Models.Commerce
{
    public interface IFee : Lambda.Interfaces.IBaseErpModel,
                            Lambda.Interfaces.IBaseErpModelMoneyId,
                            Lambda.Interfaces.IBaseErpModelDescription,
                            Lambda.Interfaces.ITimeSpan,
                            Lambda.Interfaces.IBaseErpModelExternalId,
                            Lambda.Interfaces.IBaseErpModelFee
    {
         
    }
}