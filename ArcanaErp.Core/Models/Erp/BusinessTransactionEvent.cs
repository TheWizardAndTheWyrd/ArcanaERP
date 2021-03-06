using ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessTransactionEvent")]
    public partial class BusinessTransactionEvent : IBusinessTransactionEvent
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int BusinessTransactionAccountRootId { get; set; }

        public int BusinessTransactionTypeId { get; set; }

        public DateTime EnteredDate { get; set; }

        public DateTime PostDate { get; set; }

        public int BusinessTransactionRecordId { get; set; }

        [StringLength(255)]
        public string BusinessTransactionRecordType { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
