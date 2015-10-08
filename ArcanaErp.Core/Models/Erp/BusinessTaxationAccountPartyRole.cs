namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BusinessTaxationAccountPartyRole")]
    public partial class BusinessTaxationAccountPartyRole
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? BusinessTaxationAccountRootId { get; set; }

        public int? PartyId { get; set; }

        public int? BusinessTaxationAccountPartyTypeId { get; set; }

        public int? IsDefaultBillingAccountFlag { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
