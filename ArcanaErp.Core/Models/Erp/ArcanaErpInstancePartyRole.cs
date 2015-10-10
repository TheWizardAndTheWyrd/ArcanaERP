using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ArcanaErpInstancePartyRole")]
    public partial class ArcanaErpInstancePartyRole : IErpInstancePartyRole
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? ArcanaErpInstanceId { get; set; }

        public int? PartyId { get; set; }

        public int? RoleTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
