CREATE TABLE [dbo].[InvoicePaymentTerm] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [InvoicePaymentTermTypeId] INT            NULL,
    [InvoicePaymentTermSetId]  INT            NULL,
    [Description]              VARCHAR (255)  NULL,
    [Payby]                    DATE           NULL,
    [Amount]                   DECIMAL (8, 2) NULL,
    [CreatedAt]                DATETIME       NOT NULL,
    [UpdatedAt]                DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexInvoicePaymentTermOnInvoicePaymentTermTypeId]
    ON [dbo].[InvoicePaymentTerm]([InvoicePaymentTermTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexInvoicePaymentTermOnInvoicePaymentTermSetId]
    ON [dbo].[InvoicePaymentTerm]([InvoicePaymentTermSetId] ASC);

