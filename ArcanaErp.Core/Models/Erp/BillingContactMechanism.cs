namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class BillingContactMechanism
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? ContactMechanismId { get; set; }

        [StringLength(255)]
        public string ContactMechanismType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
