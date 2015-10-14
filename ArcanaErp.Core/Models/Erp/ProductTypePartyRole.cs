namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ProductTypePartyRole")]
    public partial class ProductTypePartyRole : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        public int? RoleTypeId { get; set; }

        public int? ProductTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
