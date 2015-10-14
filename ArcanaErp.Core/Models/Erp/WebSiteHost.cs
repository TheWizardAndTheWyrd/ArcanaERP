namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WebSiteHost")]
    public partial class WebSiteHost : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WebSiteId { get; set; }

        [StringLength(255)]
        public string Host { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
