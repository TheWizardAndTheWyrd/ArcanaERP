CREATE TABLE [dbo].[CreditCard] (
    [Id]                       INT           IDENTITY (1, 1) NOT NULL,
    [CryptedPrivateCardNumber] VARCHAR (255) NULL,
    [CryptedPrivateCvc]        VARCHAR (255) NULL,
    [Expirationmonth]          INT           NULL,
    [Expirationyear]           INT           NULL,
    [Description]              VARCHAR (255) NULL,
    [nameOnCard]               VARCHAR (255) NULL,
    [CardType]                 VARCHAR (255) NULL,
    [PostalAddressId]          INT           NULL,
    [CreditCardToken]          VARCHAR (255) NULL,
    [CreatedAt]                DATETIME      NOT NULL,
    [UpdatedAt]                DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

