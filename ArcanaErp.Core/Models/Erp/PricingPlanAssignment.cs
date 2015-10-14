namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("PricingPlanAssignment")]
    public partial class PricingPlanAssignment : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PricingPlanId { get; set; }

        public int? PriceableItemId { get; set; }

        [StringLength(255)]
        public string PriceableItemType { get; set; }

        public int? Priority { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
