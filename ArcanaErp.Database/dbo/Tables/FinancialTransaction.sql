CREATE TABLE [dbo].[FinancialTransaction] (
    [Id]        INT      IDENTITY (1, 1) NOT NULL,
    [MoneyId]   INT      NULL,
    [ApplyDate] DATE     NULL,
    [CreatedAt] DATETIME NOT NULL,
    [UpdatedAt] DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

