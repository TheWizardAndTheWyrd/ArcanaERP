using ArcanaErp.Core.Interfaces.Models.Commerce;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("CreditCard")]
    public partial class CreditCard : ICreditCard
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string CryptedPrivateCardNumber { get; set; }

        [StringLength(255)]
        public string CryptedPrivateCvc { get; set; }

        public int ExpirationMonth { get; set; }

        public int ExpirationYear { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string NameOnCard { get; set; }

        [StringLength(255)]
        public string CardType { get; set; }

        public int PostalAddressId { get; set; }

        [StringLength(255)]
        public string CreditCardToken { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
