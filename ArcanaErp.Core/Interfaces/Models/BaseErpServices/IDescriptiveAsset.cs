using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IDescriptiveAsset : Lambda.Interfaces.IBaseErpModel,
                                         Lambda.Interfaces.IBaseErpModelViewTypeId,
                                         Lambda.Interfaces.IBaseErpModelInternalId,
                                         Lambda.Interfaces.IBaseErpModelDescription,
                                         Lambda.Interfaces.IBaseErpModelExternalId,
                                         Lambda.Interfaces.IBaseErpModelDescribedRecord
    {

    }
}