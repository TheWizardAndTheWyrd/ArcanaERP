namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ConfigurationItem
    {
        public int Id { get; set; }

        public int? ConfigurationId { get; set; }

        public int? ConfigurationItemTypeId { get; set; }

        public int? ConfigurationoptiOnId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
