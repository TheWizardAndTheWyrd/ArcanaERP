using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementRelationshipType : Lambda.Interfaces.IBaseErpModel,
                                                  Lambda.Interfaces.IBaseErpModelParentId,
                                                  Lambda.Interfaces.IBaseErpModelLeftRightValues,
                                                  Lambda.Interfaces.IBaseErpModelDescription,
                                                  Lambda.Interfaces.IBaseErpModelInternalId,
                                                  Lambda.Interfaces.IBaseErpModelExternalId,
                                                  Lambda.Interfaces.IBaseErpModelAgreementRelationshipTypeValidTraffic,
                                                  Lambda.Interfaces.IBaseErpModelName
    {

    }
}