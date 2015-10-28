using ArcanaErp.Core.Interfaces.Models.Application;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("DelayedJob")]
    public partial class DelayedJob : IDelayedJob
    {
        public int Id { get; set; }

        public int Priority { get; set; }

        public int Attempts { get; set; }

        [Column(TypeName = "text")]
        public string Handler { get; set; }

        [Column(TypeName = "text")]
        public string LastError { get; set; }

        public DateTime RunAt { get; set; }

        public DateTime LockedAt { get; set; }

        public DateTime FailedAt { get; set; }

        [StringLength(255)]
        public string LockedBy { get; set; }

        [StringLength(255)]
        public string Queue { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
