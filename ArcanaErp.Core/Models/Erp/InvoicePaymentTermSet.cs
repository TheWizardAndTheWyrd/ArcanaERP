namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("InvoicePaymentTermSet")]
    public partial class InvoicePaymentTermSet : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? InvoiceId { get; set; }

        public int? InvoiceItemId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
