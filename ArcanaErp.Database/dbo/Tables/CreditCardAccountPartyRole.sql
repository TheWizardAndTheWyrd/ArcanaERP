CREATE TABLE [dbo].[CreditCardAccountPartyRole] (
    [Id]                  INT      IDENTITY (1, 1) NOT NULL,
    [CreditCardAccountId] INT      NULL,
    [RoleTypeId]          INT      NULL,
    [PartyId]             INT      NULL,
    [CreditCardId]        INT      NULL,
    [CreatedAt]           DATETIME NOT NULL,
    [UpdatedAt]           DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexCreditCardAccountPartyRoleOnCreditCardAccountId]
    ON [dbo].[CreditCardAccountPartyRole]([CreditCardAccountId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCreditCardAccountPartyRoleOnRoleTypeId]
    ON [dbo].[CreditCardAccountPartyRole]([RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCreditCardAccountPartyRoleOnPartyId]
    ON [dbo].[CreditCardAccountPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCreditCardAccountPartyRoleOnCreditCardId]
    ON [dbo].[CreditCardAccountPartyRole]([CreditCardId] ASC);

