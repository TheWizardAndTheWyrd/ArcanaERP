namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Content")]
    public partial class Content : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

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

        public bool? DisplayTitle { get; set; }

        public int? Version { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
