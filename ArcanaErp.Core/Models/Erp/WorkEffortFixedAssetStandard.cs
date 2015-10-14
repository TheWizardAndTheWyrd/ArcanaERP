namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WorkEffortFixedAssetStandard")]
    public partial class WorkEffortFixedAssetStandard : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        public int? FixedAssetTypeId { get; set; }

        public decimal? EstimatedQuantity { get; set; }

        public decimal? EstimatedDuration { get; set; }

        public int? EstimatedCostMoneyId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
