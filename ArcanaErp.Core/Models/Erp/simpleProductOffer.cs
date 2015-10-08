namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("simpleProductOffer")]
    public partial class simpleProductOffer
    {
        public int Id { get; set; }

        public int? ProductTypeId { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [Column("string")]
        [StringLength(255)]
        public string _string { get; set; }

        public decimal? BasePrice { get; set; }

        public int? uom { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
