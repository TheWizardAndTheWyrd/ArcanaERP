namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("AcceptedCreditCard")]
    public partial class AcceptedCreditCard : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? OrganizationId { get; set; }

        [StringLength(255)]
        public string CardType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
