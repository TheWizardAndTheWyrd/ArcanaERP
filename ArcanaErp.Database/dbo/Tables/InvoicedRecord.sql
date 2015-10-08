CREATE TABLE [dbo].[InvoicedRecord] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [InvoiceItemId]       INT           NULL,
    [InvoiceableItemId]   INT           NULL,
    [InvoiceableItemType] VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [InvoicedRecordInvoiceableItemIndex]
    ON [dbo].[InvoicedRecord]([InvoiceableItemId] ASC, [InvoiceableItemType] ASC);

