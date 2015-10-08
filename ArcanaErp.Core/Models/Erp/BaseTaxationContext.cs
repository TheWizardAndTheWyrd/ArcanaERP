namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BaseTaxationContext")]
    public partial class BaseTaxationContext
    {
        public int Id { get; set; }

        public int? BusinessTaxationEventId { get; set; }

        public int? TaxationContextRecordId { get; set; }

        [StringLength(255)]
        public string TaxationContextRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
