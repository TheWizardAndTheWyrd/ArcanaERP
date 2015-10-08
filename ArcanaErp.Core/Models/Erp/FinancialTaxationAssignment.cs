namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FinancialTaxationAssignment")]
    public partial class FinancialTaxationAssignment
    {
        public int Id { get; set; }

        public int? FinancialTaxationId { get; set; }

        public int? FinancialTaxationRecordId { get; set; }

        [StringLength(255)]
        public string FinancialTaxationRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
