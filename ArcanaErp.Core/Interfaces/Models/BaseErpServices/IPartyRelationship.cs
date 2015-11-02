using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IPartyRelationship : Lambda.Interfaces.IBaseErpModel,
                                          Lambda.Interfaces.IBaseErpModelDescription,
                                          Lambda.Interfaces.IBaseErpModelPartyTraffic,
                                          Lambda.Interfaces.IBaseErpModelRoleTypeTraffic,
                                          Lambda.Interfaces.IBaseErpModelStatusTypeId,
                                          Lambda.Interfaces.IBaseErpModelRelationshipTypeId,
                                          Lambda.Interfaces.ITimeSpan,
                                          Lambda.Interfaces.IBaseErpModelExternalId,
                                          Lambda.Interfaces.IBaseErpModelPriorityTypeId
    {

    }
}