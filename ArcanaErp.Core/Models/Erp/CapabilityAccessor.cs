namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CapabilityAccessor")]
    public partial class CapabilityAccessor
    {
        public int Id { get; set; }

        public int? CapabilityaccessorRecordId { get; set; }

        [StringLength(255)]
        public string CapabilityaccessorRecordType { get; set; }

        public int? CapabilityId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
