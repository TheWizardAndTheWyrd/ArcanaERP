namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductInstanceInventoryEntry")]
    public partial class ProductInstanceInventoryEntry
    {
        public int Id { get; set; }

        public int? ProductInstanceId { get; set; }

        public int? InventoryEntryId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
