namespace ArcanaErp.Core.Interfaces.Models.Commerce
{
    public interface IPaymentGateway : Lambda.Interfaces.IBaseErpModel,
                                       Lambda.Interfaces.IBaseErpModelPaymentGateway,
                                       Lambda.Interfaces.IBaseErpModelPaymentGatewayActionId,
                                       Lambda.Interfaces.IBaseErpModelPaymentId
    {
         
    }
}