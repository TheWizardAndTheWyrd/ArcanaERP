using ArcanaErp.Core.Interfaces.Models.Agreements;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Agreement")]
    public partial class Agreement : IAgreement
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int AgreementTypeId { get; set; }

        [StringLength(255)]
        public string AgreementStatus { get; set; }

        public int ProductId { get; set; }

        [Column(TypeName = "date")]
        public DateTime AgreementDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime FromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime ThroughDate { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
