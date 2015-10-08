namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WorkEffortPartyAssignment")]
    public partial class WorkEffortPartyAssignment
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        public int? RoleTypeId { get; set; }

        public int? PartyId { get; set; }

        public DateTime? assignedFrom { get; set; }

        public DateTime? assignedThrough { get; set; }

        [Column(TypeName = "text")]
        public string Comments { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public int? Resourceallocation { get; set; }
    }
}
