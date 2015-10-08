namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class GeneratedItem
    {
        public int Id { get; set; }

        public int? GeneratedById { get; set; }

        [StringLength(255)]
        public string GeneratedByType { get; set; }

        public int? GeneratedRecordId { get; set; }

        [StringLength(255)]
        public string GeneratedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
