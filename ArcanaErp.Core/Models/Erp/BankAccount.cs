namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;
    using Interfaces.Models.Commerce;

    [Table("BankAccount")]
    public partial class BankAccount : IBankAccount
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string RoutingNumber { get; set; }

        [StringLength(255)]
        public string CryptedPrivateAccountNumber { get; set; }

        [StringLength(255)]
        public string NameOnAccount { get; set; }

        public int BankAccountTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
