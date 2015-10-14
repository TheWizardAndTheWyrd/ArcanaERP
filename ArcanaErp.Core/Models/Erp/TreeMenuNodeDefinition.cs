using ArcanaErp.Core.Interfaces.Models.Application;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("TreeMenuNodeDefinition")]
    public partial class TreeMenuNodeDefinition : ITreeMenuNodeDefinition, Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string NodeType { get; set; }

        public int? ParentId { get; set; }

        public int? LeftValue { get; set; }

        public int? RightValue { get; set; }

        [StringLength(255)]
        public string MenuShortName { get; set; }

        [StringLength(255)]
        public string MenuDescription { get; set; }

        [StringLength(255)]
        public string Text { get; set; }

        [StringLength(255)]
        public string IconUrl { get; set; }

        [StringLength(255)]
        public string TargetUrl { get; set; }

        [StringLength(255)]
        public string ResourceClass { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
