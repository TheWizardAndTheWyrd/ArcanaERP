namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ProductFeatureApplicability")]
    public partial class ProductFeatureApplicability : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? FeatureOfRecordId { get; set; }

        [StringLength(255)]
        public string FeatureOfRecordType { get; set; }

        public int? ProductFeatureId { get; set; }

        public bool? IsMandatory { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
