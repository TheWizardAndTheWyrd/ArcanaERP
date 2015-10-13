namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BillingAccount")]
    public partial class BillingAccount
    {
        public int Id { get; set; }

        public bool? SendPaperBills { get; set; }

        public bool? PayableOnline { get; set; }

        [Column(TypeName = "date")]
        public DateTime? BillingDate { get; set; }

        public int? CalculateBalanceStrategyTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
