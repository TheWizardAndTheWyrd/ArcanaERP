namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Resume")]
    public partial class Resume : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        [Column(TypeName = "text")]
        public string FileContent { get; set; }

        [Column(TypeName = "text")]
        public string XmlResumeData { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
