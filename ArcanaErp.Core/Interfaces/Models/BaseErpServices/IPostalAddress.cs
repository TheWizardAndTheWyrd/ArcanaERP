using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IPostalAddress
    {
        int Id { get; set; }
        string AddressLine1 { get; set; }
        string AddressLine2 { get; set; }
        string City { get; set; }
        string State { get; set; }
        string Zip { get; set; }
        string Country { get; set; }
        string Description { get; set; }
        int? GeoCountryId { get; set; }
        int? GeoZoneId { get; set; }
        decimal? Latitude { get; set; }
        decimal? Longitude { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}