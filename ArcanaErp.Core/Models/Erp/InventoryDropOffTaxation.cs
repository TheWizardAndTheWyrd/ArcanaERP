namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("InventoryDropOffTaxation")]
    public partial class InventoryDropOffTaxation
    {
        public int Id { get; set; }

        public int? FixedAssetId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? Quantity { get; set; }

        public int? UnitOfMeasurementId { get; set; }

        [Column(TypeName = "text")]
        public string Comment { get; set; }

        public int? InventoryEntryId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
