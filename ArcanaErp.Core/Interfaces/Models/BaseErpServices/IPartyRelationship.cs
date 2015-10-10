using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IPartyRelationship
    {
        int Id { get; set; }
        string Description { get; set; }
        int? PartyIdFrom { get; set; }
        int? PartyIdTo { get; set; }
        int? RoleTypeIdFrom { get; set; }
        int? RoleTypeIdTo { get; set; }
        int? StatusTypeId { get; set; }
        int? PriorityTypeId { get; set; }
        int? RelationshipTypeId { get; set; }
        DateTime? FromDate { get; set; }
        DateTime? ThroughDate { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdSource { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}