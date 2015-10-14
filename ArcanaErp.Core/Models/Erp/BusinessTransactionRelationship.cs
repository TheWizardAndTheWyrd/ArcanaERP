namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("BusinessTransactionRelationship")]
    public partial class BusinessTransactionRelationship : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? BusinessTransactionRelationshipTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? TransactionEventIdFrom { get; set; }

        public int? TransactionEventIdTo { get; set; }

        public int? StatusTypeId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
