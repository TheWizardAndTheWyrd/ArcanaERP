using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Category")]
    public partial class Category : ICategory
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        public string ExternalIdSource { get; set; }

        public DateTime FromDate { get; set; }

        public DateTime ThroughDate { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        public int CategoryRecordId { get; set; }

        [StringLength(255)]
        public string CategoryRecordType { get; set; }

        public int ParentId { get; set; }

        public int LeftValue { get; set; }

        public int RightValue { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
