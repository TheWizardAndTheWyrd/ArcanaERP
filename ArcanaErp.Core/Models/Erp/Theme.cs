namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Theme")]
    public partial class Theme : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WebSiteId { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string ThemeId { get; set; }

        [StringLength(255)]
        public string Author { get; set; }

        public int? Version { get; set; }

        [StringLength(255)]
        public string HomePage { get; set; }

        [Column(TypeName = "text")]
        public string Summary { get; set; }

        public int? Active { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
