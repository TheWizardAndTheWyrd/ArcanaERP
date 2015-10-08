namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Resume")]
    public partial class Resume
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        [Column(TypeName = "text")]
        public string FileContent { get; set; }

        [Column(TypeName = "text")]
        public string XmlResumeData { get; set; }
    }
}
