namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Money")]
    public partial class Money
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public decimal? amount { get; set; }

        public int? CurrencyId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
