using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFixedAssetPartyRole
    {
        int Id { get; set; }
        int? PartyId { get; set; }
        int? FixedAssetId { get; set; }
        int? RoleTypeId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}