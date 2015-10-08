CREATE TABLE [dbo].[InvoicePaymentTermSet] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [InvoiceId]          INT           NULL,
    [InvoiceItemId]      INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [Comments]           VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexInvoicePaymentTermSetOnInvoiceId]
    ON [dbo].[InvoicePaymentTermSet]([InvoiceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexInvoicePaymentTermSetOnInvoiceItemId]
    ON [dbo].[InvoicePaymentTermSet]([InvoiceItemId] ASC);

