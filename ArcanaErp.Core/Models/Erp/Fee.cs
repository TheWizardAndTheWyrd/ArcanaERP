namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Fee")]
    public partial class Fee : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? FeeRecordId { get; set; }

        [StringLength(255)]
        public string FeeRecordType { get; set; }

        public int? MoneyId { get; set; }

        public int? FeeTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public DateTime? StartDate { get; set; }

        public DateTime? EndDate { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
