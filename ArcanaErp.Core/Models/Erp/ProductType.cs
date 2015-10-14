namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ProductType")]
    public partial class ProductType : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ParentId { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? ProductTypeRecordId { get; set; }

        [StringLength(255)]
        public string ProductTypeRecordType { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        [StringLength(255)]
        public string DefaultImageUrl { get; set; }

        public int? ListViewImageId { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        [StringLength(255)]
        public string Sku { get; set; }

        [Column(TypeName = "text")]
        public string Comment { get; set; }

        public int? UnitOfMeasurementId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public bool? AvailableOnWeb { get; set; }

        public decimal? Length { get; set; }

        public decimal? Width { get; set; }

        public decimal? Height { get; set; }

        public decimal? Weight { get; set; }

        public bool? Cylindrical { get; set; }

        public bool? Taxable { get; set; }
    }
}
