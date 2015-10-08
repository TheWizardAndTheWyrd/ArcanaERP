CREATE TABLE [dbo].[CreditCardAccount] (
    [Id]                        INT      IDENTITY (1, 1) NOT NULL,
    [CreditCardAccountPuposeId] INT      NULL,
    [CreatedAt]                 DATETIME NOT NULL,
    [UpdatedAt]                 DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CreditCardAccountPuposeIndex]
    ON [dbo].[CreditCardAccount]([CreditCardAccountPuposeId] ASC);

