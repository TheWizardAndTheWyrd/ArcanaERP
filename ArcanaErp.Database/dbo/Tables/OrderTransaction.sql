CREATE TABLE [dbo].[OrderTransaction] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [Description]              VARCHAR (255)  NULL,
    [OrderTransactionTypeId]      INT            NULL,
    [OrderTransactionRecordId]    INT            NULL,
    [OrderTransactionRecordType]  VARCHAR (255)  NULL,
    [Email]                    VARCHAR (255)  NULL,
    [PhoneNumber]              VARCHAR (255)  NULL,
    [ShipToFirstName]          VARCHAR (255)  NULL,
    [ShipToLastName]           VARCHAR (255)  NULL,
    [ShipToAddressLine1]       VARCHAR (255)  NULL,
    [ShipToAddressLine2]       VARCHAR (255)  NULL,
    [ShipToCity]               VARCHAR (255)  NULL,
    [ShipToState]              VARCHAR (255)  NULL,
    [ShipToPostalCode]         VARCHAR (255)  NULL,
    [ShipToCountryName]        VARCHAR (255)  NULL,
    [CustomerIp]               VARCHAR (255)  NULL,
    [OrderNumber]              VARCHAR (255)  NULL,
    [ErrorMessage]             VARCHAR (255)  NULL,
    [CreatedAt]                DATETIME       NOT NULL,
    [UpdatedAt]                DATETIME       NOT NULL,
    [PaymentGatewayTransactionId] VARCHAR (255)  NULL,
    [CreditCardId]             INT            NULL,
    [BillToFirstName]          VARCHAR (255)  NULL,
    [BillToLastName]           VARCHAR (255)  NULL,
    [BillToAddressLine1]       VARCHAR (255)  NULL,
    [BillToAddressLine2]       VARCHAR (255)  NULL,
    [BillToCity]               VARCHAR (255)  NULL,
    [BillToState]              VARCHAR (255)  NULL,
    [BillToPostalCode]         VARCHAR (255)  NULL,
    [BillToCountryName]        VARCHAR (255)  NULL,
    [BillToCountry]            VARCHAR (255)  NULL,
    [ShipToCountry]            VARCHAR (255)  NULL,
    [SalesTax]                 DECIMAL (8, 2) NULL,
	[Taxed]					   BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexOrderTransactionOnOrderTransactionTypeId]
    ON [dbo].[OrderTransaction]([OrderTransactionTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [OrderTransactionRecordIndex]
    ON [dbo].[OrderTransaction]([OrderTransactionRecordId] ASC, [OrderTransactionRecordType] ASC);

