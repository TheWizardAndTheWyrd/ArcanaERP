namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ProductFeatureTypeProductFeatureValue")]
    public partial class ProductFeatureTypeProductFeatureValue : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ProductFeatureTypeId { get; set; }

        public int? ProductFeatureValueId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
