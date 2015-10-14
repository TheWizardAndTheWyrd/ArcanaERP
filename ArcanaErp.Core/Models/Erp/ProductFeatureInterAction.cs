namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ProductFeatureInterAction")]
    public partial class ProductFeatureInterAction : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ProductFeatureFromId { get; set; }

        public int? ProductFeatureToId { get; set; }

        public int? ProductFeatureInteractionTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
