namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WorkRequirementFulfillment")]
    public partial class WorkRequirementFulfillment
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? WorkEffortId { get; set; }

        public int? RequirementId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
