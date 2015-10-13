using ArcanaErp.Core.Interfaces.Models.Agreements;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("AgreementItem")]
    public partial class AgreementItem : IAgreementItem, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? AgreementId { get; set; }

        public int? AgreementItemTypeId { get; set; }

        [StringLength(255)]
        public string AgreementItemValue { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string AgreementItemRuleString { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
