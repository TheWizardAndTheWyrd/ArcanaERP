using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IErpInstancePartyRole
    {
        int Id { get; set; }
        string Description { get; set; }
        int? ArcanaErpInstanceId { get; set; }
        int? PartyId { get; set; }
        int? RoleTypeId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}