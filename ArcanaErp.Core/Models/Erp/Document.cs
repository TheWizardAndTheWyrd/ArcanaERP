using ArcanaErp.Core.Interfaces.Models.ContentManagementSystem;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class Document : IDocument
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        public string ExternalIdSource { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public DateTime DocumentDate { get; set; }

        public int DocumentRecordId { get; set; }

        [StringLength(255)]
        public string DocumentRecordType { get; set; }

        public int DocumentTypeId { get; set; }

        [Column(TypeName = "text")]
        public string CustomFields { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
