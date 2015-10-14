namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("OrderLineItemPartyRole")]
    public partial class OrderLineItemPartyRole : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? RoleTypeId { get; set; }

        public int? BusinessTransactionAccountRootId { get; set; }

        public int? OrderLineItemId { get; set; }

        public int? PartyId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
