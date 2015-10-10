using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Organization")]
    public partial class Organization : IOrganization
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string TaxIdNumber { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
