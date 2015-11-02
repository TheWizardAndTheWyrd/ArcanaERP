using ArcanaErp.Core.Interfaces.Models.Commerce;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Payment")]
    public partial class Payment : IPayment
    {
        public int Id { get; set; }

        public bool Success { get; set; }

        [StringLength(255)]
        public string ReferenceNumber { get; set; }

        public int FinancialTransactionId { get; set; }

        [StringLength(255)]
        public string CurrentState { get; set; }

        [StringLength(255)]
        public string AuthorizationCode { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
