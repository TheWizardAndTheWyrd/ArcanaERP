namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PricingPlanComponent")]
    public partial class PricingPlanComponent
    {
        public int Id { get; set; }

        public int? PriceComponentTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        [StringLength(255)]
        public string MatchingRules { get; set; }

        [StringLength(255)]
        public string PricingCalculation { get; set; }

        public bool? IsSimpleAmount { get; set; }

        public int? CurrencyId { get; set; }

        public decimal? MoneyAmount { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
