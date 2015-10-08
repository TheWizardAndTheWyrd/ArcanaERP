namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductFeatureApplicability")]
    public partial class ProductFeatureApplicability
    {
        public int Id { get; set; }

        public int? FeatureOfRecordId { get; set; }

        [StringLength(255)]
        public string FeatureOfRecordType { get; set; }

        public int? ProductFeatureId { get; set; }

        public bool? Ismandatory { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
