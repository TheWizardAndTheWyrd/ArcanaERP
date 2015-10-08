namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Publishedelement
    {
        public int Id { get; set; }

        public int? PublishedWebSiteId { get; set; }

        public int? PublishedelementRecordId { get; set; }

        [StringLength(255)]
        public string PublishedelementRecordType { get; set; }

        public int? Version { get; set; }

        public int? PublishedById { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
