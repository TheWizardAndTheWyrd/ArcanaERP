namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DelayedJob")]
    public partial class DelayedJob
    {
        public int Id { get; set; }

        public int? Priority { get; set; }

        public int? Attempts { get; set; }

        [Column(TypeName = "text")]
        public string handler { get; set; }

        [Column(TypeName = "text")]
        public string Lasterror { get; set; }

        public DateTime? RunAt { get; set; }

        public DateTime? LockedAt { get; set; }

        public DateTime? FailedAt { get; set; }

        [StringLength(255)]
        public string LockedBy { get; set; }

        [StringLength(255)]
        public string Queue { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
