namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Notification")]
    public partial class Notification : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        public int? CreatedById { get; set; }

        [Column(TypeName = "text")]
        public string Message { get; set; }

        public int? NotificationTypeId { get; set; }

        [StringLength(255)]
        public string CurrentState { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        [Column(TypeName = "text")]
        public string CusomFields { get; set; }
    }
}
