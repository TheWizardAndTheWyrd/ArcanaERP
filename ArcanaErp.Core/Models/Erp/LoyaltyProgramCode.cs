using ArcanaErp.Core.Interfaces.Models.Agreements;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoyaltyProgramCode")]
    public partial class LoyaltyProgramCode : ILoyaltyProgramCode
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Identifier { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
