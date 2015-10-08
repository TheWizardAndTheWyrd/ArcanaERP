namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BusinessAccountTaxationTask")]
    public partial class BusinessAccountTaxationTask
    {
        public int Id { get; set; }

        public int? BusinessTaxationTaskId { get; set; }

        public int? BusinessTaxationAccountId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        public DateTime? EnteredDate { get; set; }

        public DateTime? requestedDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
