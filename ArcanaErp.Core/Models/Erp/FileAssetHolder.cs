namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FileAssetHolder")]
    public partial class FileAssetHolder
    {
        public int Id { get; set; }

        public int? FileAssetId { get; set; }

        public int? FileAssetHolderId { get; set; }

        [StringLength(255)]
        public string FileAssetHolderType { get; set; }

        [Column(TypeName = "text")]
        public string ScopedBy { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
