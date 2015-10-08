using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementRoleType
    {
        int Id { get; set; }
        int? ParentId { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        string Description { get; set; }
        string Comments { get; set; }
        string InternalIdentifier { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdSource { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}