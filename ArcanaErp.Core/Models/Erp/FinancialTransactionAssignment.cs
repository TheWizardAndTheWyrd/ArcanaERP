namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("FinancialTransactionAssignment")]
    public partial class FinancialTransactionAssignment : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? FinancialTransactionId { get; set; }

        public int? FinancialTransactionRecordId { get; set; }

        [StringLength(255)]
        public string FinancialTransactionRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
