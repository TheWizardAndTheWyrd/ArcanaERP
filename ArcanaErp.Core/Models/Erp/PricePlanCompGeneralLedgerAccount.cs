namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PricePlanCompGeneralLedgerAccount")]
    public partial class PricePlanCompGeneralLedgerAccount
    {
        public int Id { get; set; }

        public int? PricingPlanComponentId { get; set; }

        public int? GeneralLedgerAccountId { get; set; }

        [StringLength(255)]
        public string mappingRuleklass { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
