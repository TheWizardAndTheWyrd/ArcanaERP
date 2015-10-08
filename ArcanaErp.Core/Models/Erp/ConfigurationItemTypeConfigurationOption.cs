namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ConfigurationItemTypeConfigurationOption")]
    public partial class ConfigurationItemTypeConfigurationOption
    {
        public int Id { get; set; }

        public int? ConfigurationItemTypeId { get; set; }

        public int? ConfigurationoptiOnId { get; set; }

        public bool? isdefault { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
