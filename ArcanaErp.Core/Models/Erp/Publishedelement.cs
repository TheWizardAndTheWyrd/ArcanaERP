namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class PublishedElement : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PublishedWebSiteId { get; set; }

        public int? PublishedElementRecordId { get; set; }

        [StringLength(255)]
        public string PublishedElementRecordType { get; set; }

        public int? Version { get; set; }

        public int? PublishedById { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
