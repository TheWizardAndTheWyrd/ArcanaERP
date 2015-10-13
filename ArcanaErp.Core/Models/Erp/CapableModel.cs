namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class CapableModel : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? CapableModelRecordId { get; set; }

        [StringLength(255)]
        public string CapableModelRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
