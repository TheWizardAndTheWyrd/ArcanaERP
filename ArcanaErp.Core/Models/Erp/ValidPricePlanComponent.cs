namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ValidPricePlanComponent")]
    public partial class ValidPricePlanComponent
    {
        public int Id { get; set; }

        public int? PricingPlanId { get; set; }

        public int? PricingPlanComponentId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
