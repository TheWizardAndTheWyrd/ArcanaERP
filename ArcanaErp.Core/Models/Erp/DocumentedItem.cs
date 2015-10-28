using ArcanaErp.Core.Interfaces.Models.ContentManagementSystem;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class DocumentedItem : IDocumentedItem
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string DocumentedClass { get; set; }

        public int DocumentedContentId { get; set; }

        public int OnlineDocumentSectionId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
