using ArcanaErp.Core.Interfaces.Models.WorkEffort;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("AssociatedWorkEffort")]
    public partial class AssociatedWorkEffort : IAssociatedWorkEffort
    {
        public int Id { get; set; }

        public int WorkEffortId { get; set; }

        public int AssociatedRecordId { get; set; }

        [StringLength(255)]
        public string AssociatedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
