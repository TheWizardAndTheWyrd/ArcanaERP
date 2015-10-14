namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("PartyFixedAssetAssignment")]
    public partial class PartyFixedAssetAssignment : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        public int? FixedAssetId { get; set; }

        public DateTime? AssignedFrom { get; set; }

        public DateTime? Assignedthru { get; set; }

        public int? AllocatedCostMoneyId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
