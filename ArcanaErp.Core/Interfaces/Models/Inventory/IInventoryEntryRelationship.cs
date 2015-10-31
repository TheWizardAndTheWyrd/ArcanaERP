using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Models.Inventory
{
    public interface IInventoryEntryRelationship : Lambda.Interfaces.IBaseErpModel,
                                                   Lambda.Interfaces.IBaseErpModelDescription,
                                                   Lambda.Interfaces.IBaseErpModelInventoryEntryRelationshipTypeId,
                                                   Lambda.Interfaces.IBaseErpModelInventoryEntryTraffic,
                                                   Lambda.Interfaces.IBaseErpModelRoleTypeTraffic,
                                                   Lambda.Interfaces.IBaseErpModelStatusTypeId,
                                                   Lambda.Interfaces.ITimeSpan
    {
    }
}
