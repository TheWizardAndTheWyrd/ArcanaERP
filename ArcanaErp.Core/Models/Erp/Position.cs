namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Position")]
    public partial class Position
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        public int? PositionTypeId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? EstimatedFromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? EstimatedThroughDate { get; set; }

        public bool? SalaryFlag { get; set; }

        public bool? exemptFlag { get; set; }

        public bool? fullTimeFlag { get; set; }

        public bool? temporaryFlag { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ActualFromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ActualThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
