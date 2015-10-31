using ArcanaErp.Core.Interfaces.Models.Invoicing;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("InvoiceItem")]
    public partial class InvoiceItem : IInvoiceItem
    {
        public int Id { get; set; }

        public int InvoiceId { get; set; }

        public int InvoiceItemTypeId { get; set; }

        public int ItemSequenceId { get; set; }

        [Column(TypeName = "text")]
        public string ItemDescription { get; set; }

        public decimal Quantity { get; set; }

        public decimal Amount { get; set; }

        public bool Taxable { get; set; }

        public decimal UnitPrice { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public decimal SalesTax { get; set; }

        public bool Taxed { get; set; }
    }
}
