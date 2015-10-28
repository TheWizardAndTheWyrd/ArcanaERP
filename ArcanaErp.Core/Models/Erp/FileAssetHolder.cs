using ArcanaErp.Core.Interfaces.Models.TechServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("FileAssetHolder")]
    public partial class FileAssetHolder : IFileAssetHolder
    {
        public int Id { get; set; }

        public int FileAssetId { get; set; }

        public int FileAssetHolderId { get; set; }

        [StringLength(255)]
        public string FileAssetHolderType { get; set; }

        [Column(TypeName = "text")]
        public string ScopedBy { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
