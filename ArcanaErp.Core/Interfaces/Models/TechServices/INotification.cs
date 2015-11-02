namespace ArcanaErp.Core.Interfaces.Models.TechServices
{
    public interface INotification : Lambda.Interfaces.IBaseErpModel,
                                     Lambda.Interfaces.IBaseErpModelType,
                                     Lambda.Interfaces.IBaseErpModelCreatedById,
                                     Lambda.Interfaces.IBaseErpModelMessage,
                                     Lambda.Interfaces.IBaseErpModelNotificationTypeId,
                                     Lambda.Interfaces.IBaseErpModelCurrentState,
                                     Lambda.Interfaces.IBaseErpModelCustomFields
    {
         
    }
}