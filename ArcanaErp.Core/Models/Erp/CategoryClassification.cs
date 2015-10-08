namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CategoryClassification")]
    public partial class CategoryClassification
    {
        public int Id { get; set; }

        public int? CategoryId { get; set; }

        [StringLength(255)]
        public string ClassificationType { get; set; }

        public int? ClassificationId { get; set; }

        public DateTime? FromDate { get; set; }

        public DateTime? ToDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
