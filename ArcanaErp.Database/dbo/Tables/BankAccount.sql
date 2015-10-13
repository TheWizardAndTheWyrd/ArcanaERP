CREATE TABLE [dbo].[BankAccount] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [RoutingNumber]               VARCHAR (255) NULL,
    [CryptedPrivateAccountNumber] VARCHAR (255) NULL,
    [NameOnAccount]               VARCHAR (255) NULL,
    [BankAccountTypeId]           INT           NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [BankAccountAccountTypeIndex]
    ON [dbo].[BankAccount]([BankAccountTypeId] ASC);

