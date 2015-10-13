using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("DescriptiveAsset")]
    public partial class DescriptiveAsset : IDescriptiveAsset, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ViewTypeId { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [Column(TypeName = "text")]
        public string Description { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public int? DescribedRecordId { get; set; }

        [StringLength(255)]
        public string DescribedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
