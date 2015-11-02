using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("NoteType")]
    public partial class NoteType : INoteType
    {
        public int Id { get; set; }

        public int ParentId { get; set; }

        public int LeftValue { get; set; }

        public int RightValue { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        public string ExternalIdSource { get; set; }

        public int NoteTypeRecordId { get; set; }

        [StringLength(255)]
        public string NoteTypeRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
