namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class Tagging : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? TagId { get; set; }

        public int? TaggableId { get; set; }

        public int? TaggerId { get; set; }

        [StringLength(255)]
        public string TaggerType { get; set; }

        [StringLength(255)]
        public string TaggableType { get; set; }

        [StringLength(255)]
        public string Context { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
