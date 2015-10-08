using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementPartyRole
    {
        int Id { get; set; }
        string Description { get; set; }
        int? AgreementId { get; set; }
        int? PartyId { get; set; }
        int? RoleTypeId { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdSource { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}