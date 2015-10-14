namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("FileAsset")]
    public partial class FileAsset : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Directory { get; set; }

        [StringLength(255)]
        public string DataFileName { get; set; }

        [StringLength(255)]
        public string DataContentType { get; set; }

        public int? DataFileSize { get; set; }

        public DateTime? DataUpdatedAt { get; set; }

        [StringLength(255)]
        public string Width { get; set; }

        [StringLength(255)]
        public string Height { get; set; }

        [Column(TypeName = "text")]
        public string ScopedBy { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
