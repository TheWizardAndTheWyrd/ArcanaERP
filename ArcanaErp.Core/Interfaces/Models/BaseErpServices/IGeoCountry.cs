using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IGeoCountry
    {
        int Id { get; set; }
        string Name { get; set; }
        string IsoCode2 { get; set; }
        string IsoCode3 { get; set; }
        bool? Display { get; set; }
        int? ExternalId { get; set; }
        DateTime CreatedAt { get; set; }
    }
}