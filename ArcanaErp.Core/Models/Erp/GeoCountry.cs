namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("GeoCountry")]
    public partial class GeoCountry
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string IsoCode2 { get; set; }

        [StringLength(255)]
        public string isocode3 { get; set; }

        public bool? display { get; set; }

        public int? ExternalId { get; set; }

        public DateTime? CreatedAt { get; set; }
    }
}
