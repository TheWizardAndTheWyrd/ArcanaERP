using ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessTransactionAccountRoot")]
    public partial class BusinessTransactionAccountRoot : IBusinessTransactionAccountRoot
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int Status { get; set; }

        public int BusinessTransactionAccountId { get; set; }

        [StringLength(255)]
        public string BusinessTransactionAccountType { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        public int BusinessTransactionAccountTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
