namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("InventoryEntryLocation")]
    public partial class InventoryEntryLocation
    {
        public int Id { get; set; }

        public int? InventoryEntryId { get; set; }

        public int? FacilityId { get; set; }

        public DateTime? ValidFrom { get; set; }

        public DateTime? ValidThrough { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
