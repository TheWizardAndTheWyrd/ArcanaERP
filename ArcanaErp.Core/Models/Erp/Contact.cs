using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Contact")]
    public partial class Contact : IContact
    {
        public int Id { get; set; }

        public int? ContactMechanismId { get; set; }

        [StringLength(255)]
        public string ContactMechanismType { get; set; }

        public bool? IsPrimary { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        [StringLength(255)]
        public string ContactRecordType { get; set; }

        public int? ContactRecordId { get; set; }
    }
}
