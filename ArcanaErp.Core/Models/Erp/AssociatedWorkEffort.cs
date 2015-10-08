namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AssociatedWorkEffort")]
    public partial class AssociatedWorkEffort
    {
        public int Id { get; set; }

        public int? WorkEffortId { get; set; }

        public int? AssociatedRecordId { get; set; }

        [StringLength(255)]
        public string AssociatedRecordType { get; set; }
    }
}
