using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ValidNoteType")]
    public partial class ValidNoteType : IValidNoteType, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ValidNoteTypeRecordId { get; set; }

        [StringLength(255)]
        public string ValidNoteTypeRecordType { get; set; }

        public int? NoteTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
