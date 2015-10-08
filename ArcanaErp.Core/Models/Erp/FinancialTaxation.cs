namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FinancialTaxation")]
    public partial class FinancialTaxation
    {
        public int Id { get; set; }

        public int? MoneyId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? applyDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
