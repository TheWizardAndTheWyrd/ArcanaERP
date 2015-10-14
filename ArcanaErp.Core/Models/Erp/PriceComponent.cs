namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("PriceComponent")]
    public partial class PriceComponent : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? PricingPlanComponentId { get; set; }

        public int? PriceId { get; set; }

        public int? MoneyId { get; set; }

        public int? PricedComponentId { get; set; }

        [StringLength(255)]
        public string PricedComponentType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
