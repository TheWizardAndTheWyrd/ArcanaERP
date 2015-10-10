using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IGeoZone
    {
        int Id { get; set; }
        int? GeoCountryId { get; set; }
        string ZoneCode { get; set; }
        string ZoneName { get; set; }
        DateTime? CreatedAt { get; set; }
    }
}