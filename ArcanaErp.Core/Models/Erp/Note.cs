using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Note")]
    public partial class Note : INote, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? CreatedById { get; set; }

        [Column(TypeName = "text")]
        public string Content { get; set; }

        public int? NotedRecordId { get; set; }

        [StringLength(255)]
        public string NotedRecordType { get; set; }

        public int? NoteTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
