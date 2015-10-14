namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Payment")]
    public partial class Payment
    {
        public int Id { get; set; }

        public bool? Success { get; set; }

        [StringLength(255)]
        public string ReferenceNumber { get; set; }

        public int? FinancialTransactionId { get; set; }

        [StringLength(255)]
        public string currentstate { get; set; }

        [StringLength(255)]
        public string authorizationCode { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
