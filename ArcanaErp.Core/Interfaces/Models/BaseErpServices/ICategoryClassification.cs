using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface ICategoryClassification : Lambda.Interfaces.IBaseErpModel,
                                               Lambda.Interfaces.IBaseErpModelCategoryId,
                                               Lambda.Interfaces.IBaseErpModelClassification,
                                               Lambda.Interfaces.ITimeSpan
    {

    }
}