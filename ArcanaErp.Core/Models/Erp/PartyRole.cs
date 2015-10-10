using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PartyRole")]
    public partial class PartyRole : IPartyRole
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        public int? PartyId { get; set; }

        public int? RoleTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
