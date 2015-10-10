using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFacility
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        int? FacilityTypeId { get; set; }
        int? PostalAddressId { get; set; }
        int? FacilityRecordId { get; set; }
        int? FacilityRecordType { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}