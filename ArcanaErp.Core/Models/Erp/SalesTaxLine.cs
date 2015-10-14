namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class SalesTaxLine : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? SalesTaxPolicyId { get; set; }

        public decimal? Rate { get; set; }

        [Column(TypeName = "text")]
        public string Comment { get; set; }

        public int? TaxedRecordId { get; set; }

        [StringLength(255)]
        public string TaxedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
