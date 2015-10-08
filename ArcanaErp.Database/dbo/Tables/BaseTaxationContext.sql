CREATE TABLE [dbo].[BaseTaxationContext] (
    [Id]                        INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTaxationEventId]   INT           NULL,
    [TaxationContextRecordId]   INT           NULL,
    [TaxationContextRecordType] VARCHAR (255) NULL,
    [CreatedAt]                 DATETIME      NOT NULL,
    [UpdatedAt]                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [TaxationContextRecordIndex]
    ON [dbo].[BaseTaxationContext]([TaxationContextRecordId] ASC, [TaxationContextRecordType] ASC);

