using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Models.Inventory
{
    public interface IInventoryEntryRoleType : Lambda.Interfaces.IBaseErpModel,
                                               Lambda.Interfaces.IBaseErpModelParentId,
                                               Lambda.Interfaces.IBaseErpModelLeftRightValues,
                                               Lambda.Interfaces.IBaseErpModelDescription,
                                               Lambda.Interfaces.IBaseErpModelComments,
                                               Lambda.Interfaces.IBaseErpModelInternalId,
                                               Lambda.Interfaces.IBaseErpModelExternalId
    {
    }
}
