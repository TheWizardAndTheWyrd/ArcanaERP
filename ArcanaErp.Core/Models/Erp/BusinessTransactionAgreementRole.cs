namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessTransactionAgreementRole")]
    public partial class BusinessTransactionAgreementRole : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? BusinessTransactionEventId { get; set; }

        [StringLength(255)]
        public string BusinessTransactionEventType { get; set; }

        public int? AgreementId { get; set; }

        public int? BusinessTransactionAgreementRoleTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
