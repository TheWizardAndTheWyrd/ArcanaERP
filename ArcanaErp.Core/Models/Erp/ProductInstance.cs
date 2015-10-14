namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ProductInstance")]
    public partial class ProductInstance : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ParentId { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? ProductInstanceRecordId { get; set; }

        [StringLength(255)]
        public string ProductInstanceRecordType { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public int? ProductTypeId { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        public int? ProductAvailabilityStatusTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
