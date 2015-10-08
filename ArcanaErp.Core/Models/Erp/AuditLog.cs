namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AuditLog")]
    public partial class AuditLog
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Application { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? PartyId { get; set; }

        [Column(TypeName = "text")]
        public string additiOnalinfo { get; set; }

        public int? AuditLogTypeId { get; set; }

        public int? EventRecordId { get; set; }

        [StringLength(255)]
        public string EventRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
