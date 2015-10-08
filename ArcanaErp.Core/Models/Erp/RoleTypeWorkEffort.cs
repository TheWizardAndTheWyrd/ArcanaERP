namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RoleTypeWorkEffort")]
    public partial class RoleTypeWorkEffort
    {
        public int Id { get; set; }

        public int? RoleTypeId { get; set; }

        public int? WorkEffortId { get; set; }
    }
}
