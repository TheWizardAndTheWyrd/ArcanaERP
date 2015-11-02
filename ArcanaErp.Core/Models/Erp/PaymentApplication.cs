using ArcanaErp.Core.Interfaces.Models.Invoicing;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("PaymentApplication")]
    public partial class PaymentApplication : IPaymentApplication
    {
        public int Id { get; set; }

        public int FinancialTransactionId { get; set; }

        public int PaymentAppliedToId { get; set; }

        [StringLength(255)]
        public string PaymentAppliedToType { get; set; }

        public int AppliedMoneyAmountId { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
