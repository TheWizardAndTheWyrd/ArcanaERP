CREATE TABLE [dbo].[SalesTaxLines] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [SalesTaxPolicyId] INT            NULL,
    [Rate]             DECIMAL (8, 2) NULL,
    [Comment]          TEXT           NULL,
    [TaxedRecordId]    INT            NULL,
    [TaxedRecordType]  VARCHAR (255)  NULL,
    [CreatedAt]        DATETIME       NOT NULL,
    [UpdatedAt]        DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

