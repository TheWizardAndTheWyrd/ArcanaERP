using System;

namespace ArcanaErp.Core.Interfaces.Models.TechServices
{
    public interface IAuditLog : Lambda.Interfaces.IBaseErpModel,
                                 Lambda.Interfaces.IBaseErpModelDescription,
                                 Lambda.Interfaces.IBaseErpModelPartyId,
                                 Lambda.Interfaces.IBaseErpModelWorkAuditLog

    {

    }
}