namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WorkEffort")]
    public partial class WorkEffort : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ParentId { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        public int? FacilityId { get; set; }

        public int? ProjectedCostMoneyId { get; set; }

        public int? ActualCostMoneyId { get; set; }

        public int? FixedAssetId { get; set; }

        public int? WorkEffortPuposeTypeId { get; set; }

        public int? WorkEffortTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        public DateTime? StartAt { get; set; }

        public DateTime? EndAt { get; set; }

        public int? WorkEffortRecordId { get; set; }

        [StringLength(255)]
        public string WorkEffortRecordType { get; set; }

        public int? WorkEffortItemId { get; set; }

        [StringLength(255)]
        public string WorkEffortItemType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        [Column(TypeName = "text")]
        public string Comments { get; set; }

        public int? PercentDone { get; set; }

        public int? Duration { get; set; }

        [StringLength(255)]
        public string DurationUnit { get; set; }

        public int? Effort { get; set; }

        [StringLength(255)]
        public string EffortUnit { get; set; }

        public DateTime? BaseLineStartAt { get; set; }

        public DateTime? BaseLineEndAt { get; set; }

        public int? BaseLinePercentDone { get; set; }

        public int? ProjectId { get; set; }

        public int? Sequence { get; set; }
    }
}
