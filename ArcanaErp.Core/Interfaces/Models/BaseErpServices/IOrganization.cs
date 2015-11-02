using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IOrganization : Lambda.Interfaces.IBaseErpModel,
                                     Lambda.Interfaces.IBaseErpModelDescription,
                                     Lambda.Interfaces.IBaseErpModelTaxIdNumber
    {

    }
}