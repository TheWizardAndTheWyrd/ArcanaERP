using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IParty
    {
        int Id { get; set; }
        string Description { get; set; }
        int? BusinessPartyId { get; set; }
        string BusinessPartyType { get; set; }
        int? ListViewImageId { get; set; }
        string EnterpriseIdentifier { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}