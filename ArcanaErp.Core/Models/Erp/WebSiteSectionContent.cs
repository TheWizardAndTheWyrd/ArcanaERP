namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WebSiteSectionContent")]
    public partial class WebSiteSectionContent
    {
        public int Id { get; set; }

        public int? WebSiteSectionId { get; set; }

        public int? ContentId { get; set; }

        [StringLength(255)]
        public string Contentarea { get; set; }

        public int? Position { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
