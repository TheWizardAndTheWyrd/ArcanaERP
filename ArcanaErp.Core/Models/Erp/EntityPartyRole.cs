namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EntityPartyRole")]
    public partial class EntityPartyRole
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        public int? RoleTypeId { get; set; }

        public int? EntityRecordId { get; set; }

        [StringLength(255)]
        public string EntityRecordType { get; set; }
    }
}
