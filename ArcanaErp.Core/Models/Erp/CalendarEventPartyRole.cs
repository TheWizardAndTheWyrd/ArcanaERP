using ArcanaErp.Core.Interfaces.Models.WorkEffort;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("CalendarEventPartyRole")]
    public partial class CalendarEventPartyRole : ICalendarEventPartyRole
    {
        public int Id { get; set; }

        public int PartyId { get; set; }

        public int RoleTypeId { get; set; }

        public int CalendarEventId { get; set; }

        [Column(TypeName = "text")]
        public string Description { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
