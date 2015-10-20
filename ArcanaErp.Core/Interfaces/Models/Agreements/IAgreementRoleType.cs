using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementRoleType : Lambda.Interfaces.IBaseErpModel,
                                          Lambda.Interfaces.IBaseErpModelDescription,
                                          Lambda.Interfaces.IBaseErpModelComments,
                                          Lambda.Interfaces.IBaseErpModelInternalId,
                                          Lambda.Interfaces.IBaseErpModelExternalId,
                                          Lambda.Interfaces.IBaseErpModelLeftRightValues,
                                          Lambda.Interfaces.IBaseErpModelParentId
    {

    }
}