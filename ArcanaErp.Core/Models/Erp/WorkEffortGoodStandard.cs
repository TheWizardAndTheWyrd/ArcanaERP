namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WorkEffortGoodStandard")]
    public partial class WorkEffortGoodStandard
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        public int? GoodTypeId { get; set; }

        public decimal? EstimatedQuantity { get; set; }

        public int? EstimatedCostMoneyId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
