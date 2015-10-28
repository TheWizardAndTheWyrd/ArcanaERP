using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFacilityType : Lambda.Interfaces.IBaseErpModel,
                                     Lambda.Interfaces.IBaseErpModelDescription,
                                     Lambda.Interfaces.IBaseErpModelInternalId,
                                     Lambda.Interfaces.IBaseErpModelExternalId,
                                     Lambda.Interfaces.IBaseErpModelParentId,
                                     Lambda.Interfaces.IBaseErpModelLeftRightValues
    {

    } 
}