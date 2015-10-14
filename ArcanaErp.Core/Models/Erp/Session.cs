namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class Session : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string SessionId { get; set; }

        [Column(TypeName = "text")]
        public string Data { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
