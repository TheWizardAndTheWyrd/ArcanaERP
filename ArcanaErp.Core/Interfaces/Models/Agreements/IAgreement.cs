using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreement
    {
        int Id { get; set; }
        string Description { get; set; }
        int? AgreementTypeId { get; set; }
        string AgreementStatus { get; set; }
        int? ProductId { get; set; }
        DateTime? AgreementDate { get; set; }
        DateTime? FromDate { get; set; }
        DateTime? ThroughDate { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdSource { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}