using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface ICategory : Lambda.Interfaces.IBaseErpModel,
                                 Lambda.Interfaces.IBaseErpModelDescription,
                                 Lambda.Interfaces.IBaseErpModelExternalId,
                                 Lambda.Interfaces.ITimeSpan,
                                 Lambda.Interfaces.IBaseErpModelInternalId,
                                 Lambda.Interfaces.IBaseErpModelCategory,
                                 Lambda.Interfaces.IBaseErpModelParentId,
                                 Lambda.Interfaces.IBaseErpModelLeftRightValues
    {

    }
}