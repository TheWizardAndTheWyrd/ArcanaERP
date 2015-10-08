namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PostalAddress
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Addressline1 { get; set; }

        [StringLength(255)]
        public string Addressline2 { get; set; }

        [StringLength(255)]
        public string city { get; set; }

        [StringLength(255)]
        public string State { get; set; }

        [StringLength(255)]
        public string zip { get; set; }

        [StringLength(255)]
        public string Country { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? GeoCountryId { get; set; }

        public int? GeozOneId { get; set; }

        public decimal? latitude { get; set; }

        public decimal? lOngitude { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
