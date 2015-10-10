using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PostalAddress : IPostalAddress
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string AddressLine1 { get; set; }

        [StringLength(255)]
        public string AddressLine2 { get; set; }

        [StringLength(255)]
        public string City { get; set; }

        [StringLength(255)]
        public string State { get; set; }

        [StringLength(255)]
        public string Zip { get; set; }

        [StringLength(255)]
        public string Country { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? GeoCountryId { get; set; }

        public int? GeoZoneId { get; set; }

        public decimal? Latitude { get; set; }

        public decimal? Longitude { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
