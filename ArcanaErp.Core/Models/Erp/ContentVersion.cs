namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ContentVersion
    {
        public int Id { get; set; }

        public int? ContentId { get; set; }

        public int? Version { get; set; }

        [StringLength(255)]
        public string Title { get; set; }

        [StringLength(255)]
        public string PermaLink { get; set; }

        [Column(TypeName = "text")]
        public string ExcerptHtml { get; set; }

        [Column(TypeName = "text")]
        public string BodyHtml { get; set; }

        public int? CreatedById { get; set; }

        public int? UpdatedById { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        public bool? displayTitle { get; set; }

        public DateTime? CreatedAt { get; set; }

        public DateTime? UpdatedAt { get; set; }

        [StringLength(255)]
        public string VersionedType { get; set; }
    }
}
