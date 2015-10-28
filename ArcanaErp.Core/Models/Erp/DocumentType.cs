using ArcanaErp.Core.Interfaces.Models.ContentManagementSystem;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("DocumentType")]
    public partial class DocumentType : IDocumentType
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        public string ExternalIdSource { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
