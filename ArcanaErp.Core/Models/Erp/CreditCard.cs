namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CreditCard")]
    public partial class CreditCard
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string CryptedPrivateCardNumber { get; set; }

        [StringLength(255)]
        public string CryptedPrivateCvc { get; set; }

        public int? Expirationmonth { get; set; }

        public int? Expirationyear { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string nameOnCard { get; set; }

        [StringLength(255)]
        public string CardType { get; set; }

        public int? PostalAddressId { get; set; }

        [StringLength(255)]
        public string CreditCardToken { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
