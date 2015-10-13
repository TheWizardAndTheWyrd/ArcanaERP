namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("BusinessTaxationPartyRole")]
    public partial class BusinessTaxationPartyRole : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? BusinessTaxationEventId { get; set; }

        public int? PartyId { get; set; }

        public int? BusinessTaxationPartyRoleTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
