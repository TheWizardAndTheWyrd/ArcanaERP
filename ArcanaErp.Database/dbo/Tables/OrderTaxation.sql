CREATE TABLE [dbo].[OrderTaxation] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [Description]              VARCHAR (255)  NULL,
    [OrderTaxationTypeId]      INT            NULL,
    [OrderTaxationRecordId]    INT            NULL,
    [OrderTaxationRecordType]  VARCHAR (255)  NULL,
    [email]                    VARCHAR (255)  NULL,
    [phoneNumber]              VARCHAR (255)  NULL,
    [shipTofirstname]          VARCHAR (255)  NULL,
    [shipTolastname]           VARCHAR (255)  NULL,
    [shipToAddressLine1]       VARCHAR (255)  NULL,
    [shipToAddressLine2]       VARCHAR (255)  NULL,
    [shipTocity]               VARCHAR (255)  NULL,
    [shipTostate]              VARCHAR (255)  NULL,
    [shipToPostalCode]         VARCHAR (255)  NULL,
    [shipTocountryname]        VARCHAR (255)  NULL,
    [Customerip]               VARCHAR (255)  NULL,
    [OrderNumber]              VARCHAR (255)  NULL,
    [errorMessage]             VARCHAR (255)  NULL,
    [CreatedAt]                DATETIME       NOT NULL,
    [UpdatedAt]                DATETIME       NOT NULL,
    [PaymentGatewayTaxationId] VARCHAR (255)  NULL,
    [CreditCardId]             INT            NULL,
    [billTofirstname]          VARCHAR (255)  NULL,
    [billTolastname]           VARCHAR (255)  NULL,
    [billToAddressLine1]       VARCHAR (255)  NULL,
    [billToAddressLine2]       VARCHAR (255)  NULL,
    [billTocity]               VARCHAR (255)  NULL,
    [billTostate]              VARCHAR (255)  NULL,
    [billToPostalCode]         VARCHAR (255)  NULL,
    [billTocountryname]        VARCHAR (255)  NULL,
    [billTocountry]            VARCHAR (255)  NULL,
    [shipTocountry]            VARCHAR (255)  NULL,
    [SalesTax]                 DECIMAL (8, 2) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexOrderTaxationOnOrderTaxationTypeId]
    ON [dbo].[OrderTaxation]([OrderTaxationTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [OrderTaxationRecordIndex]
    ON [dbo].[OrderTaxation]([OrderTaxationRecordId] ASC, [OrderTaxationRecordType] ASC);

