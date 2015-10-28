using ArcanaErp.Core.Interfaces.Models.Commerce;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("CreditCardAccountPartyRole")]
    public partial class CreditCardAccountPartyRole : ICreditCardAccountPartyRole
    {
        public int Id { get; set; }

        public int CreditCardAccountId { get; set; }

        public int RoleTypeId { get; set; }

        public int PartyId { get; set; }

        public int CreditCardId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
