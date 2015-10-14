namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("WcCode")]
    public partial class WcCode : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        [Column("WcCode")]
        [StringLength(255)]
        public string WcCode1 { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [Column(TypeName = "text")]
        public string CustomFields { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
