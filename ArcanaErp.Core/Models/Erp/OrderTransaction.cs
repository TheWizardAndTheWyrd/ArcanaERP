namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("OrderTransaction")]
    public partial class OrderTransaction : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? OrderTransactionTypeId { get; set; }

        public int? OrderTransactionRecordId { get; set; }

        [StringLength(255)]
        public string OrderTransactionRecordType { get; set; }

        [StringLength(255)]
        public string Email { get; set; }

        [StringLength(255)]
        public string PhoneNumber { get; set; }

        [StringLength(255)]
        public string ShipToFirstName { get; set; }

        [StringLength(255)]
        public string ShipToLastName { get; set; }

        [StringLength(255)]
        public string ShipToAddressLine1 { get; set; }

        [StringLength(255)]
        public string ShipToAddressLine2 { get; set; }

        [StringLength(255)]
        public string ShipToCity { get; set; }

        [StringLength(255)]
        public string ShipToState { get; set; }

        [StringLength(255)]
        public string ShipToPostalCode { get; set; }

        [StringLength(255)]
        public string ShipToCountryName { get; set; }

        [StringLength(255)]
        public string CustomerIp { get; set; }

        [StringLength(255)]
        public string OrderNumber { get; set; }

        [StringLength(255)]
        public string ErrorMessage { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        [StringLength(255)]
        public string PaymentGatewayTransactionId { get; set; }

        public int? CreditCardId { get; set; }

        [StringLength(255)]
        public string BillToFirstName { get; set; }

        [StringLength(255)]
        public string BillToLastName { get; set; }

        [StringLength(255)]
        public string BillToAddressLine1 { get; set; }

        [StringLength(255)]
        public string BillToAddressLine2 { get; set; }

        [StringLength(255)]
        public string BillToCity { get; set; }

        [StringLength(255)]
        public string BillToState { get; set; }

        [StringLength(255)]
        public string BillToPostalCode { get; set; }

        [StringLength(255)]
        public string BillToCountryName { get; set; }

        [StringLength(255)]
        public string BillToCountry { get; set; }

        [StringLength(255)]
        public string ShipToCountry { get; set; }

        public decimal? SalesTax { get; set; }
    }
}
