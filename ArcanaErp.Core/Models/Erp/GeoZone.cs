using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("GeoZone")]
    public partial class GeoZone : IGeoZone
    {
        public int Id { get; set; }

        public int GeoCountryId { get; set; }

        [StringLength(255)]
        public string ZoneCode { get; set; }

        [StringLength(255)]
        public string ZoneName { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
