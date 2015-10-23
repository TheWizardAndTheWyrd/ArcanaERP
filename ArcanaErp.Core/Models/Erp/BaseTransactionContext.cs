using ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BaseTransactionContext")]
    public partial class BaseTransactionContext : IBaseTransactionContext
    {
        public int Id { get; set; }

        public int BusinessTransactionEventId { get; set; }

        public int TransactionContextRecordId { get; set; }

        [StringLength(255)]
        public string TransactionContextRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
