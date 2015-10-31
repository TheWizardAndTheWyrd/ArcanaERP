using ArcanaErp.Core.Interfaces.Models.Invoicing;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Invoice")]
    public partial class Invoice : IInvoice
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string InvoiceNumber { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Message { get; set; }

        [Column(TypeName = "date")]
        public DateTime InvoiceDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime DueDate { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public int ProductId { get; set; }

        public int InvoiceTypeId { get; set; }

        public int BillingAccountId { get; set; }

        public int InvoicePaymentStrategyTypeId { get; set; }

        public int BalanceId { get; set; }

        public int CalculateBalanceStrategyTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public decimal SalesTax { get; set; }

        public bool Taxed { get; set; }
    }
}
