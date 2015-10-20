using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IErpInstancePartyRole : Lambda.Interfaces.IBaseErpModel,
                                             Lambda.Interfaces.IBaseErpModelDescription,
                                             Lambda.Interfaces.IBaseErpModelRoleTypeId,
                                             Lambda.Interfaces.IBaseErpModelPartyId,
                                             Lambda.Interfaces.IBaseErpModelArcanaErpInstanceId
    {

    }
}