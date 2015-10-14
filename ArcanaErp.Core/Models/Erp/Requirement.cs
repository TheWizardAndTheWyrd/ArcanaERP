namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Requirement")]
    public partial class Requirement : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ParentId { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        public int? ProjectedCompletionTime { get; set; }

        public int? EstimatedBudgetMoneyId { get; set; }

        public int? RequirementTypeId { get; set; }

        public int? RequirementRecordId { get; set; }

        [StringLength(255)]
        public string RequirementRecordType { get; set; }

        public int? FixedAssetId { get; set; }

        public int? ProductId { get; set; }

        public int? DeliverableId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
