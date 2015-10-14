namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("BusinessTransactionAccountStatusType")]
    public partial class BusinessTransactionAccountStatusType : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
