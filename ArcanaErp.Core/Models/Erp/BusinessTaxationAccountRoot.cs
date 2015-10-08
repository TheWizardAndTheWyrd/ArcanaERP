namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BusinessTaxationAccountRoot")]
    public partial class BusinessTaxationAccountRoot
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? Status { get; set; }

        public int? BusinessTaxationAccountId { get; set; }

        [StringLength(255)]
        public string BusinessTaxationAccountType { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        public int? BusinessTaxationAccountTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
