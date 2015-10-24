using ArcanaErp.Core.Interfaces.Models.TechServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("CapabilityAccessor")]
    public partial class CapabilityAccessor : ICapabilityAccessor
    {
        public int Id { get; set; }

        public int CapabilityAccessorRecordId { get; set; }

        [StringLength(255)]
        public string CapabilityAccessorRecordType { get; set; }

        public int CapabilityId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
