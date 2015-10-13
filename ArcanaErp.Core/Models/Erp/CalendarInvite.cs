namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("CalendarInvite")]
    public partial class CalendarInvite : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Title { get; set; }

        [Column(TypeName = "text")]
        public string Invitetext { get; set; }

        public int? CalendarEventId { get; set; }

        public int? InviterId { get; set; }

        public int? InviteeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
