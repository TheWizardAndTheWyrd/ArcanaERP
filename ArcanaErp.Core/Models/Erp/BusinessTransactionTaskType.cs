using ArcanaErp.Core.Interfaces.Models.TransactionsAndAccounts;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("BusinessTransactionTaskType")]
    public partial class BusinessTransactionTaskType : IBusinessTransactionTaskType
    {
        public int Id { get; set; }

        public int ParentId { get; set; }

        public int LeftValue { get; set; }

        public int RightValue { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
