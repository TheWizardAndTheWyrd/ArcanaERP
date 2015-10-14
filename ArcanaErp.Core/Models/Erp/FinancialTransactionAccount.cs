namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("FinancialTransactionAccount")]
    public partial class FinancialTransactionAccount : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string AccountNumber { get; set; }

        public int? AgreementId { get; set; }

        public int? BalanceId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? BalanceDate { get; set; }

        public bool? CalculateBalance { get; set; }

        public int? PaymentDueId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DueDate { get; set; }

        public int? FinancialAccountId { get; set; }

        [StringLength(255)]
        public string FinancialAccountType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
