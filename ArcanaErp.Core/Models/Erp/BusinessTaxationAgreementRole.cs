namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessTaxationAgreementRole")]
    public partial class BusinessTaxationAgreementRole : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? BusinessTaxationEventId { get; set; }

        [StringLength(255)]
        public string BusinessTaxationEventType { get; set; }

        public int? AgreementId { get; set; }

        public int? BusinessTaxationAgreementRoleTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
