CREATE TABLE [dbo].[Invoice] (
    [Id]                             INT            IDENTITY (1, 1) NOT NULL,
    [InvoiceNumber]                  VARCHAR (255)  NULL,
    [Description]                    VARCHAR (255)  NULL,
    [Message]                        VARCHAR (255)  NULL,
    [InvoiceDate]                    DATE           NULL,
    [DueDate]                        DATE           NULL,
    [ExternalIdentifier]             VARCHAR (255)  NULL,
    [ExternalIdSource]               VARCHAR (255)  NULL,
    [ProductId]                      INT            NULL,
    [InvoiceTypeId]                  INT            NULL,
    [BillingAccountId]               INT            NULL,
    [InvoicePaymentStrategyTypeId]   INT            NULL,
    [BalanceId]                      INT            NULL,
    [CalculateBalanceStrategyTypeId] INT            NULL,
    [CreatedAt]                      DATETIME       NOT NULL,
    [UpdatedAt]                      DATETIME       NOT NULL,
    [SalesTax]                       DECIMAL (8, 2) NULL,
	[Taxed]							 BIT			NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductTypeIndex]
    ON [dbo].[Invoice]([ProductId] ASC);


GO
CREATE NONCLUSTERED INDEX [InvoiceTypeIndex]
    ON [dbo].[Invoice]([InvoiceTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [InvoiceBillingAccountIndex]
    ON [dbo].[Invoice]([BillingAccountId] ASC);


GO
CREATE NONCLUSTERED INDEX [InvoicePaymentstragegyIndex]
    ON [dbo].[Invoice]([InvoicePaymentStrategyTypeId] ASC);

