namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BankAccount")]
    public partial class BankAccount
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string RoutingNumber { get; set; }

        [StringLength(255)]
        public string CryptedPrivateAccountNumber { get; set; }

        [StringLength(255)]
        public string nameOnAccount { get; set; }

        public int? BankAccountTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
