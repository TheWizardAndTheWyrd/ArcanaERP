using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("StatusApplication")]
    public partial class StatusApplication : IStatusApplication
    {
        public int Id { get; set; }

        public int? TrackedStatusTypeId { get; set; }

        public int? StatusApplicationRecordId { get; set; }

        [StringLength(255)]
        public string StatusApplicationRecordType { get; set; }

        public DateTime? FromDate { get; set; }

        public DateTime? ThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public int? PartyId { get; set; }
    }
}
