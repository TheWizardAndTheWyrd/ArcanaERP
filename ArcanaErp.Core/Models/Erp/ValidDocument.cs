namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ValidDocument
    {
        public int Id { get; set; }

        public int? DocumentId { get; set; }

        public int? DocumentedModelId { get; set; }

        [StringLength(255)]
        public string DocumentedModelType { get; set; }
    }
}
