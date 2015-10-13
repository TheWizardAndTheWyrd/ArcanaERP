namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessTaxationEvent")]
    public partial class BusinessTaxationEvent : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? BusinessTaxationAccountRootId { get; set; }

        public int? BusinessTaxationTypeId { get; set; }

        public DateTime? EnteredDate { get; set; }

        public DateTime? PostDate { get; set; }

        public int? BusinessTaxationRecordId { get; set; }

        [StringLength(255)]
        public string BusinessTaxationRecordType { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
