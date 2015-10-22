using System;

namespace ArcanaErp.Core.Interfaces.Models.TechServices
{
    public interface IAuditLogItem : Lambda.Interfaces.IBaseErpModel,
                                     Lambda.Interfaces.IBaseErpModelDescription,
                                     Lambda.Interfaces.IBaseErpModelAuditLogItem
    {

    }
}