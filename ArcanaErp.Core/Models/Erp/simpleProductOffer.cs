namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("SimpleProductOffer")]
    public partial class SimpleProductOffer : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? ProductTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [Column("string")]
        [StringLength(255)]
        public string StringValue { get; set; }

        public decimal? BasePrice { get; set; }

        public int? Uom { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
