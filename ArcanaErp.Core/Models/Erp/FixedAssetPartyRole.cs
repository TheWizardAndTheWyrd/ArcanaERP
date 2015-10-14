using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("FixedAssetPartyRole")]
    public partial class FixedAssetPartyRole : IFixedAssetPartyRole, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        public int? FixedAssetId { get; set; }

        public int? RoleTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
