using ArcanaErp.Core.Interfaces.Models.Application;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("ConfigurationItemTypeConfigurationOption")]
    public partial class ConfigurationItemTypeConfigurationOption : IConfigurationItemTypeConfigurationOption
    {
        public int Id { get; set; }

        public int ConfigurationItemTypeId { get; set; }

        public int ConfigurationOptionId { get; set; }

        public bool IsDefault { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
