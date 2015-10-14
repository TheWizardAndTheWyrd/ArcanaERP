namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("TimesheetEntryPartyRole")]
    public partial class TimesheetEntryPartyRole : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? TimesheetEntryId { get; set; }

        public int? PartyId { get; set; }

        public int? RoleTypeId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
