namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Capability")]
    public partial class Capability : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? CapabilityTypeId { get; set; }

        public int? CapabilityResourceId { get; set; }

        [StringLength(255)]
        public string CapabilityResourceType { get; set; }

        public int? ScopeTypeId { get; set; }

        [Column(TypeName = "text")]
        public string ScopeQueryText { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
