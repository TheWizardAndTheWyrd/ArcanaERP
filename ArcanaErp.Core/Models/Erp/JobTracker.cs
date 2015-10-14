using ArcanaErp.Core.Interfaces.Models.Application;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("JobTracker")]
    public partial class JobTracker : IJobTracker, Interfaces.IBaseErpModel
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

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
