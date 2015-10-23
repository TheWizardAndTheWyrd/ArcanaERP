using ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessTransactionAccountPartyRole")]
    public partial class BusinessTransactionAccountPartyRole : IBusinessTransactionAccountPartyRole
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int BusinessTransactionAccountRootId { get; set; }

        public int PartyId { get; set; }

        public int BusinessTransactionAccountPartyTypeId { get; set; }

        public bool IsDefaultBillingAccountFlag { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
