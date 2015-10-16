using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementItemType : Lambda.Interfaces.IBaseErpModel,
                                          Lambda.Interfaces.IBaseErpModelParentId,
                                          Lambda.Interfaces.IBaseErpModelInternalId,
                                          Lambda.Interfaces.IBaseErpModelExternalId,
                                          Lambda.Interfaces.IBaseErpModelDescription, 
                                          Lambda.Interfaces.IBaseErpModelComments,
                                          Lambda.Interfaces.IBaseErpModelLeftRightValues
    {

    }
}