namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("FinancialTransaction")]
    public partial class FinancialTransaction : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? MoneyId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ApplyDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
