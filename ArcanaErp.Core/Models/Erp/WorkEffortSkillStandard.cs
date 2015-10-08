namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WorkEffortSkillStandard")]
    public partial class WorkEffortSkillStandard
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        public int? SkillTypeId { get; set; }

        public decimal? EstimatedNumberPeople { get; set; }

        public decimal? EstimatedDuration { get; set; }

        public int? EstimatedCostMoneyId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
