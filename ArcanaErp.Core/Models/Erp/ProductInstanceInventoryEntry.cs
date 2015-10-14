namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ProductInstanceInventoryEntry")]
    public partial class ProductInstanceInventoryEntry : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ProductInstanceId { get; set; }

        public int? InventoryEntryId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
