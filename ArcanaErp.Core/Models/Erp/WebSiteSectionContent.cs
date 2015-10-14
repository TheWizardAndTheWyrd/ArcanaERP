namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WebSiteSectionContent")]
    public partial class WebSiteSectionContent : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WebSiteSectionId { get; set; }

        public int? ContentId { get; set; }

        [StringLength(255)]
        public string ContentArea { get; set; }

        public int? Position { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
