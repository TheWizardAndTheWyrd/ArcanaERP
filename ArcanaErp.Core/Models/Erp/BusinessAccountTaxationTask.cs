namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessAccountTaxationTask")]
    public partial class BusinessAccountTaxationTask : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? BusinessTaxationTaskId { get; set; }

        public int? BusinessTaxationAccountId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        public DateTime? EnteredDate { get; set; }

        public DateTime? RequestedDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
