namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;
    using Interfaces.Models.TransactionsAndAccounts;

    [Table("BusinessTransactionAccountRelationship")]
    public partial class BusinessTransactionAccountRelationship : IBusinessTransactionAccountRelationship
    {
        public int Id { get; set; }

        public int BusinessTransactionAccountRelationshipTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int BusinessTransactionAccountRootIdFrom { get; set; }

        public int BusinessTransactionAccountRootIdTo { get; set; }

        public int StatusTypeId { get; set; }

        [Column(TypeName = "date")]
        public DateTime FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime ThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
