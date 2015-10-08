namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WebSiteSectionVersion
    {
        public int Id { get; set; }

        public int? WebSiteSectionId { get; set; }

        public int? Version { get; set; }

        [StringLength(255)]
        public string Title { get; set; }

        public int? WebSiteId { get; set; }

        [StringLength(255)]
        public string Path { get; set; }

        [StringLength(255)]
        public string PermaLink { get; set; }

        [Column(TypeName = "text")]
        public string Layout { get; set; }

        public bool? InMenu { get; set; }

        public int? Position { get; set; }

        public bool? UseMarkDown { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        public bool? renderbaseLayout { get; set; }

        public DateTime? CreatedAt { get; set; }

        public DateTime? UpdatedAt { get; set; }

        [StringLength(255)]
        public string VersionedType { get; set; }
    }
}
