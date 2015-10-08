namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SchemaMigration")]
    public partial class SchemaMigration
    {
        [Key]
        [StringLength(255)]
        public string Version { get; set; }
    }
}
