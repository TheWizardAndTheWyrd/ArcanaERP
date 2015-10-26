using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Currency")]
    public partial class Currency : ICurrency
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Definition { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string NumericCode { get; set; }

        [StringLength(255)]
        public string MajorUnitSymbol { get; set; }

        [StringLength(255)]
        public string MinorUnitSymbol { get; set; }

        [StringLength(255)]
        public string RatioOfMinorUnitToMajorUnit { get; set; }

        [StringLength(255)]
        public string PostFixLabel { get; set; }

        public DateTime IntroductionDate { get; set; }

        public DateTime ExpirationDate { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
