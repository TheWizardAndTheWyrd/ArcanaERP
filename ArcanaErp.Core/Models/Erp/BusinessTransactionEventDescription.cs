namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("BusinessTransactionEventDescription")]
    public partial class BusinessTransactionEventDescription : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? BusinessTransactionEventId { get; set; }

        public int? LanguageId { get; set; }

        public int? LocaleId { get; set; }

        public int? Priority { get; set; }

        public int? Sequence { get; set; }

        [StringLength(255)]
        public string ShortDescription { get; set; }

        [StringLength(255)]
        public string LongDescription { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
