namespace ArcanaErp.Core.Interfaces.Models.CommunicationEvents
{
    public interface ICommunicationEvent : Lambda.Interfaces.IBaseErpModel,
                                           Lambda.Interfaces.IBaseErpModelContactMechanismTraffic,
                                           Lambda.Interfaces.IBaseErpModelRoleTypeTraffic,
                                           Lambda.Interfaces.IBaseErpModelPartyTraffic,
                                           Lambda.Interfaces.IBaseErpModelShortDescription,
                                           Lambda.Interfaces.ITimeRange,
                                           Lambda.Interfaces.IBaseErpModelExternalId,
                                           Lambda.Interfaces.IBaseErpModelStatusTypeId,
                                           Lambda.Interfaces.IBaseErpModelCaseId,
                                           Lambda.Interfaces.IBaseErpModelNotes
    {
         
    }
}