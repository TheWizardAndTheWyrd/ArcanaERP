using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementRelationship : Lambda.Interfaces.IBaseErpModel,
                                              Lambda.Interfaces.ITimeSpan,
                                              Lambda.Interfaces.IBaseErpModelDescription,
                                              Lambda.Interfaces.IBaseErpModelAgreementTraffic,
                                              Lambda.Interfaces.IBaseErpModelRoleTypeTraffic,
                                              Lambda.Interfaces.IBaseErpModelAgreementRelationshipTypeId,
                                              Lambda.Interfaces.IBaseErpModelStatusTypeId
    {

    }
}