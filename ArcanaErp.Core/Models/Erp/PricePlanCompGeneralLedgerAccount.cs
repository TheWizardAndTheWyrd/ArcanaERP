namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("PricePlanCompGeneralLedgerAccount")]
    public partial class PricePlanCompGeneralLedgerAccount : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PricingPlanComponentId { get; set; }

        public int? GeneralLedgerAccountId { get; set; }

        [StringLength(255)]
        public string MappingRuleClass { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
