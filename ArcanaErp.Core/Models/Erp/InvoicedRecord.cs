namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("InvoicedRecord")]
    public partial class InvoicedRecord : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? InvoiceItemId { get; set; }

        public int? InvoiceableItemId { get; set; }

        [StringLength(255)]
        public string InvoiceableItemType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
