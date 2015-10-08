namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TimesheetEntry")]
    public partial class TimesheetEntry
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [Column(TypeName = "date")]
        public DateTime? WorkedDate { get; set; }

        public DateTime? EnteredDate { get; set; }

        public decimal? regularhoursWorked { get; set; }

        public decimal? overTimehoursWorked { get; set; }

        public DateTime? StartTime { get; set; }

        public DateTime? EndTime { get; set; }

        [Column(TypeName = "text")]
        public string Comments { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
