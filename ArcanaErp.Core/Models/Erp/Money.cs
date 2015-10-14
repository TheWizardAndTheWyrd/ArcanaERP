using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Money")]
    public partial class Money : IMoney, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public decimal? Amount { get; set; }

        public int? CurrencyId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
