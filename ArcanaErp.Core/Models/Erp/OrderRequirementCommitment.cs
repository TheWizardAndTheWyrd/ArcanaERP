namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("OrderRequirementCommitment")]
    public partial class OrderRequirementCommitment : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? OrderLineItemId { get; set; }

        public int? RequirementId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? Quantity { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
