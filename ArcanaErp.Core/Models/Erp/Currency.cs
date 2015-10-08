namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Currency")]
    public partial class Currency
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string definitiOn { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string numericcode { get; set; }

        [StringLength(255)]
        public string majorunitsymbol { get; set; }

        [StringLength(255)]
        public string minorunitsymbol { get; set; }

        [StringLength(255)]
        public string ratioofminorunitTomajorunit { get; set; }

        [StringLength(255)]
        public string postfixlabel { get; set; }

        public DateTime? introductiOnDate { get; set; }

        public DateTime? expiratiOnDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
