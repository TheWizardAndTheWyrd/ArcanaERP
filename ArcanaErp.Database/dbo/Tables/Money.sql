CREATE TABLE [dbo].[Money] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] VARCHAR (255)  NULL,
    [Amount]      DECIMAL (8, 2) NULL,
    [CurrencyId]  INT            NULL,
    [CreatedAt]   DATETIME       NOT NULL,
    [UpdatedAt]   DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexMoneyOnCurrencyId]
    ON [dbo].[Money]([CurrencyId] ASC);

