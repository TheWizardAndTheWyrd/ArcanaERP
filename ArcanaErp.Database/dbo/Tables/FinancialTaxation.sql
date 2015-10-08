CREATE TABLE [dbo].[FinancialTaxation] (
    [Id]        INT      IDENTITY (1, 1) NOT NULL,
    [MoneyId]   INT      NULL,
    [applyDate] DATE     NULL,
    [CreatedAt] DATETIME NOT NULL,
    [UpdatedAt] DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

