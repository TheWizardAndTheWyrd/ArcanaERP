using ArcanaErp.Core.Interfaces.Models.Commerce;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class PaymentGateway : IPaymentGateway
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Parameters { get; set; }

        public int PaymentGatewayActionId { get; set; }

        public int PaymentId { get; set; }

        [StringLength(255)]
        public string Response { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
