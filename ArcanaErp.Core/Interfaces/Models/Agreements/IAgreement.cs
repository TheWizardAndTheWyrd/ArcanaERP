using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreement : Lambda.Interfaces.IBaseErpModel,
                                  Lambda.Interfaces.IBaseErpModelExternalId,
                                  Lambda.Interfaces.IBaseErpModelDescription
    {
        int? AgreementTypeId { get; set; }

        string AgreementStatus { get; set; }

        int? ProductId { get; set; }

        DateTime? AgreementDate { get; set; }
    }
}