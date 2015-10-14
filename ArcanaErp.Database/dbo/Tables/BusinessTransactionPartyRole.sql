CREATE TABLE [dbo].[BusinessTransactionPartyRole] (
    [Id]                              INT      IDENTITY (1, 1) NOT NULL,
    [BusinessTransactionEventId]         INT      NULL,
    [PartyId]                         INT      NULL,
    [BusinessTransactionPartyRoleTypeId] INT      NULL,
    [CreatedAt]                       DATETIME NOT NULL,
    [UpdatedAt]                       DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionPartyRoleOnBusinessTransactionEventId]
    ON [dbo].[BusinessTransactionPartyRole]([BusinessTransactionEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionPartyRoleOnPartyId]
    ON [dbo].[BusinessTransactionPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionPartyRoleOnBusinessTransactionPartyRoleTypeId]
    ON [dbo].[BusinessTransactionPartyRole]([BusinessTransactionPartyRoleTypeId] ASC);

