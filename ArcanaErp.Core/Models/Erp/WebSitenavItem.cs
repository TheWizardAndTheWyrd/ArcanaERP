namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class WebSiteNavItem : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? WebSiteNavId { get; set; }

        [StringLength(255)]
        public string Title { get; set; }

        [StringLength(255)]
        public string Url { get; set; }

        public int? Position { get; set; }

        public int? LinkedToItemId { get; set; }

        [StringLength(255)]
        public string LinkedToItemType { get; set; }

        public int? ParentId { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
