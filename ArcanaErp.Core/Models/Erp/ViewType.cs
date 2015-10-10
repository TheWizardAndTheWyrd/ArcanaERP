using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ViewType")]
    public partial class ViewType : IViewType
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        public int? ParentId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
