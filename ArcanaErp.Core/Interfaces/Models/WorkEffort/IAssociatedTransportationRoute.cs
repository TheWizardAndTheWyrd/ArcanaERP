using System;
using System.ComponentModel.DataAnnotations;

namespace ArcanaErp.Core.Interfaces.Models.WorkEffort
{
    public interface IAssociatedTransportationRoute : Lambda.Interfaces.IBaseErpModel,
                                                      Lambda.Interfaces.IBaseErpModelTransportationRoute,
                                                      Lambda.Interfaces.IBaseErpModelAssociatedRecord
    {

    }
}