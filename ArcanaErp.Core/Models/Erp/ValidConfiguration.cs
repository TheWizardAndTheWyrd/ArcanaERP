namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ValidConfiguration")]
    public partial class ValidConfiguration
    {
        public int Id { get; set; }

        public int? ConfiguredItemId { get; set; }

        [StringLength(255)]
        public string ConfiguredItemType { get; set; }

        public int? ConfigurationId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
