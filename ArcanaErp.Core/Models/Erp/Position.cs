using ArcanaErp.Core.Interfaces.Models.WorkEffort;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Position")]
    public partial class Position : IPosition
    {
        public int Id { get; set; }

        public int PartyId { get; set; }

        public int PositionTypeId { get; set; }

        [Column(TypeName = "date")]
        public DateTime EstimatedFromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime EstimatedThroughDate { get; set; }

        public bool SalaryFlag { get; set; }

        public bool ExemptFlag { get; set; }

        public bool FullTimeFlag { get; set; }

        public bool TemporaryFlag { get; set; }

        [Column(TypeName = "date")]
        public DateTime ActualFromDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime ActualThroughDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
