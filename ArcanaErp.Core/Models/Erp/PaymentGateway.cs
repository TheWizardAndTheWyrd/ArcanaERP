namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PaymentGateway
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Params { get; set; }

        public int? PaymentGatewayActionId { get; set; }

        public int? PaymentId { get; set; }

        [StringLength(255)]
        public string response { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
