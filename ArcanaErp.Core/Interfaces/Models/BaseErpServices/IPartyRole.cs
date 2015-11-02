using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IPartyRole : Lambda.Interfaces.IBaseErpModel,
                                  Lambda.Interfaces.IBaseErpModelType,
                                  Lambda.Interfaces.IBaseErpModelPartyId,
                                  Lambda.Interfaces.IBaseErpModelRoleTypeId
    {

    }
}