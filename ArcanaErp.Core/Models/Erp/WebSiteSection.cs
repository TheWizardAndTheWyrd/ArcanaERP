namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WebSiteSection")]
    public partial class WebSiteSection : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Title { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

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

        public int? Version { get; set; }

        public bool? RenderBaseLayout { get; set; }

        public int? ParentId { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
