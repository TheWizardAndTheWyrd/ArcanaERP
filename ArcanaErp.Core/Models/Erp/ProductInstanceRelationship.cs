namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductInstanceRelationship")]
    public partial class ProductInstanceRelationship
    {
        public int Id { get; set; }

        public int? ProductInstanceRelationshipTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? ProductInstanceIdFrom { get; set; }

        public int? ProductInstanceIdTo { get; set; }

        public int? RoleTypeIdFrom { get; set; }

        public int? RoleTypeIdTo { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
