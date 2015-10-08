namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RecurringPayment")]
    public partial class RecurringPayment
    {
        public int Id { get; set; }

        public int? PaymentAccountId { get; set; }

        [StringLength(255)]
        public string PaymentAccountType { get; set; }

        public int? BillingAccountId { get; set; }

        public decimal? PayUpToAmount { get; set; }

        public decimal? PaymentAmount { get; set; }

        public int? PaymentDay { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThroughDate { get; set; }

        public bool? enabled { get; set; }

        public bool? textTopay { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
