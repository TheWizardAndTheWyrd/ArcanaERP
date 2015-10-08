namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WebSitePartyRole")]
    public partial class WebSitePartyRole
    {
        public int Id { get; set; }

        public int? WebSiteId { get; set; }

        public int? RoleTypeId { get; set; }

        public int? PartyId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
