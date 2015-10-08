namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AuditLogItem
    {
        public int Id { get; set; }

        public int? AuditLogId { get; set; }

        public int? AuditLogItemTypeId { get; set; }

        [StringLength(255)]
        public string AuditLogItemValue { get; set; }

        [StringLength(255)]
        public string AuditLogItemoldValue { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
