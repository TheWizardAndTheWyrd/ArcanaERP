namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BusinessTaxationAccountRelationship")]
    public partial class BusinessTaxationAccountRelationship
    {
        public int Id { get; set; }

        public int? BusinessTaxationAccountRelationshipTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? BusinessTaxationAccountRootIdFrom { get; set; }

        public int? BusinessTaxationAccountRootIdTo { get; set; }

        public int? StatusTypeId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
