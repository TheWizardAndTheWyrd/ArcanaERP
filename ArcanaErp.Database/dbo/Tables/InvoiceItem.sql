CREATE TABLE [dbo].[InvoiceItem] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [InvoiceId]         INT            NULL,
    [InvoiceItemTypeId] INT            NULL,
    [ItemSequenceId]    INT            NULL,
    [ItemDescription]   TEXT           NULL,
    [Quantity]          DECIMAL (8, 2) NULL,
    [Amount]            DECIMAL (8, 2) NULL,
    [Taxable]           BIT            NULL,
    [UnitPrice]         DECIMAL (8, 2) NULL,
    [CreatedAt]         DATETIME       NOT NULL,
    [UpdatedAt]         DATETIME       NOT NULL,
    [SalesTax]          DECIMAL (8, 2) NULL,
    [Taxed]             BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [InvoiceIdIndex]
    ON [dbo].[InvoiceItem]([InvoiceId] ASC);


GO
CREATE NONCLUSTERED INDEX [InvoiceItemTypeIdIndex]
    ON [dbo].[InvoiceItem]([InvoiceItemTypeId] ASC);

