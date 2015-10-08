namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("OrderTaxation")]
    public partial class OrderTaxation
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        public int? OrderTaxationTypeId { get; set; }

        public int? OrderTaxationRecordId { get; set; }

        [StringLength(255)]
        public string OrderTaxationRecordType { get; set; }

        [StringLength(255)]
        public string email { get; set; }

        [StringLength(255)]
        public string phoneNumber { get; set; }

        [StringLength(255)]
        public string shipTofirstname { get; set; }

        [StringLength(255)]
        public string shipTolastname { get; set; }

        [StringLength(255)]
        public string shipToAddressLine1 { get; set; }

        [StringLength(255)]
        public string shipToAddressLine2 { get; set; }

        [StringLength(255)]
        public string shipTocity { get; set; }

        [StringLength(255)]
        public string shipTostate { get; set; }

        [StringLength(255)]
        public string shipToPostalCode { get; set; }

        [StringLength(255)]
        public string shipTocountryname { get; set; }

        [StringLength(255)]
        public string Customerip { get; set; }

        [StringLength(255)]
        public string OrderNumber { get; set; }

        [StringLength(255)]
        public string errorMessage { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        [StringLength(255)]
        public string PaymentGatewayTaxationId { get; set; }

        public int? CreditCardId { get; set; }

        [StringLength(255)]
        public string billTofirstname { get; set; }

        [StringLength(255)]
        public string billTolastname { get; set; }

        [StringLength(255)]
        public string billToAddressLine1 { get; set; }

        [StringLength(255)]
        public string billToAddressLine2 { get; set; }

        [StringLength(255)]
        public string billTocity { get; set; }

        [StringLength(255)]
        public string billTostate { get; set; }

        [StringLength(255)]
        public string billToPostalCode { get; set; }

        [StringLength(255)]
        public string billTocountryname { get; set; }

        [StringLength(255)]
        public string billTocountry { get; set; }

        [StringLength(255)]
        public string shipTocountry { get; set; }

        public decimal? SalesTax { get; set; }
    }
}
