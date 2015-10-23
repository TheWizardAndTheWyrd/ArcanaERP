namespace ArcanaErp.Core.Interfaces.Models.WorkEffort
{
    public interface ICalendarEvent : Lambda.Interfaces.IBaseErpModel,
                                      Lambda.Interfaces.ITimeRange,
                                      Lambda.Interfaces.IBaseErpModelTitle,
                                      Lambda.Interfaces.IBaseErpModelCalendarEvent,
                                      Lambda.Interfaces.IBaseErpModelDescription,
                                      Lambda.Interfaces.IBaseErpModelStatus,
                                      Lambda.Interfaces.IBaseErpModelCustomFields
    {
         
    }
}