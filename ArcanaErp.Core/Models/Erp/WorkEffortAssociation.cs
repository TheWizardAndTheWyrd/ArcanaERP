namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WorkEffortAssociation")]
    public partial class WorkEffortAssociation
    {
        public int Id { get; set; }

        public int? WorkEffortAssociationTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? WorkEffortIdFrom { get; set; }

        public int? WorkEffortIdTo { get; set; }

        public int? RoleTypeIdFrom { get; set; }

        public int? RoleTypeIdTo { get; set; }

        public int? RelationshipTypeId { get; set; }

        public DateTime? EffectiveFrom { get; set; }

        public DateTime? EffectiveThrough { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public int? Lag { get; set; }

        [StringLength(255)]
        public string LagUnit { get; set; }
    }
}
