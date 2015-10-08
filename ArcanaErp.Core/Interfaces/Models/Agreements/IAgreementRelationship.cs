using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementRelationship
    {
        int Id { get; set; }
        int? AgreementRelationshipTypeId { get; set; }
        string Description { get; set; }
        int? AgreementIdFrom { get; set; }
        int? AgreementIdTo { get; set; }
        int? RoleTypeIdFrom { get; set; }
        int? RoleTypeIdTo { get; set; }
        int? StatusTypeId { get; set; }
        DateTime? FromDate { get; set; }
        DateTime? ThroughDate { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}