namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WorkEffortPartyAssignment")]
    public partial class WorkEffortPartyAssignment : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        public int? RoleTypeId { get; set; }

        public int? PartyId { get; set; }

        public DateTime? AssignedFrom { get; set; }

        public DateTime? AssignedThrough { get; set; }

        [Column(TypeName = "text")]
        public string Comments { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public int? ResourceAllocation { get; set; }
    }
}
