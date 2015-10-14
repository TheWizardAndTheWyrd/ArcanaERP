namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class ValidDocument : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? DocumentId { get; set; }

        public int? DocumentedModelId { get; set; }

        [StringLength(255)]
        public string DocumentedModelType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
