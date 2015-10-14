using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("PartyRelationship")]
    public partial class PartyRelationship : IPartyRelationship, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? PartyIdFrom { get; set; }

        public int? PartyIdTo { get; set; }

        public int? RoleTypeIdFrom { get; set; }

        public int? RoleTypeIdTo { get; set; }

        public int? StatusTypeId { get; set; }

        public int? PriorityTypeId { get; set; }

        public int? RelationshipTypeId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThroughDate { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
