using ArcanaErp.Core.Interfaces.Models.Commerce;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("CreditCardAccount")]
    public partial class CreditCardAccount : ICreditCardAccount
    {
        public int Id { get; set; }

        public int CreditCardAccountPuposeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
