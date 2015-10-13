namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("CommunicationEvent")]
    public partial class CommunicationEvent : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? FromContactMechanismId { get; set; }

        [StringLength(255)]
        public string FromContactMechanismType { get; set; }

        public int? ToContactMechanismId { get; set; }

        [StringLength(255)]
        public string ToContactMechanismType { get; set; }

        public int? RoleTypeIdFrom { get; set; }

        public int? RoleTypeIdTo { get; set; }

        public int? PartyIdFrom { get; set; }

        public int? PartyIdTo { get; set; }

        [StringLength(255)]
        public string ShortDescription { get; set; }

        public int? StatusTypeId { get; set; }

        public int? CaseId { get; set; }

        public DateTime? DateTimeStarted { get; set; }

        public DateTime? DateTimeEnded { get; set; }

        [StringLength(255)]
        public string Notes { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
