using ArcanaErp.Core.Interfaces.Models.Application;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("JobTracker")]
    public partial class JobTracker : IJobTracker
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string JobName { get; set; }

        [StringLength(255)]
        public string JobClass { get; set; }

        [StringLength(255)]
        public string RunTime { get; set; }

        public DateTime? LastRunAt { get; set; }

        public DateTime? NextRunAt { get; set; }
    }
}
