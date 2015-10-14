namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("InvoicePaymentTerm")]
    public partial class InvoicePaymentTerm : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? InvoicePaymentTermTypeId { get; set; }

        public int? InvoicePaymentTermSetId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [Column(TypeName = "date")]
        public DateTime? PayBy { get; set; }

        public decimal? Amount { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
