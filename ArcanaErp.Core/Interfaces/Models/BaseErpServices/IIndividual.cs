using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IIndividual : Lambda.Interfaces.IBaseErpModel,
                                   Lambda.Interfaces.IBaseErpModelPartyId,
                                   Lambda.Interfaces.IBaseErpModelComments,
                                   Lambda.Interfaces.IBaseErpModelIndividual,
                                   Lambda.Interfaces.IBaseErpModelSsn,
                                   Lambda.Interfaces.IBaseErpModelSalt
    {

    }
}