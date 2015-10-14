namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WorkEffortFixedAssetAssignment")]
    public partial class WorkEffortFixedAssetAssignment : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        public int? FixedAssetId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
