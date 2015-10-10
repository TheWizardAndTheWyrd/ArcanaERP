using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IPartyRole
    {
        int Id { get; set; }
        string Type { get; set; }
        int? PartyId { get; set; }
        int? RoleTypeId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}