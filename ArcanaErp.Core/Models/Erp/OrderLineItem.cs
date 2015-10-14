namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("OrderLineItem")]
    public partial class OrderLineItem : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        public int? OrderTransactionId { get; set; }

        public int? OrderLineItemTypeId { get; set; }

        public int? ProductInstanceId { get; set; }

        [StringLength(255)]
        public string ProductInstanceDescription { get; set; }

        public int? ProductTypeId { get; set; }

        [StringLength(255)]
        public string ProductTypeDescription { get; set; }

        public decimal? SoldPrice { get; set; }

        public int? SoldPriceUnitOfMeasurement { get; set; }

        public int? SoldAmount { get; set; }

        public int? SoldAmountUnitOfMeasurement { get; set; }

        public int? ProductOfferId { get; set; }

        public int? Quantity { get; set; }

        public int? UnitOfMeasurementId { get; set; }

        [StringLength(255)]
        public string ProductOfferDescription { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        public decimal? UnitPrice { get; set; }

        public decimal? SalesTax { get; set; }

        public bool? Taxed { get; set; }
    }
}
