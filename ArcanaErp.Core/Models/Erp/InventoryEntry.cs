using ArcanaErp.Core.Interfaces.Models.Inventory;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("InventoryEntry")]
    public partial class InventoryEntry : IInventoryEntry
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int InventoryEntryRecordId { get; set; }

        [StringLength(255)]
        public string InventoryEntryRecordType { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public int ProductTypeId { get; set; }

        public int NumberAvailable { get; set; }

        [StringLength(255)]
        public string Sku { get; set; }

        public int NumberSold { get; set; }

        public int UnitOfMeasurementId { get; set; }

        public int NumberInStock { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
