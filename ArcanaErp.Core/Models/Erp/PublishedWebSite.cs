namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class PublishedWebSite : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WebSiteId { get; set; }

        [Column(TypeName = "text")]
        public string Comment { get; set; }

        public decimal? Version { get; set; }

        public bool? Active { get; set; }

        public int? PublishedById { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
