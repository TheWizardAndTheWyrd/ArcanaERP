CREATE TABLE [dbo].[BusinessTransactionAccountPartyRole] (
    [Id]                                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]                        VARCHAR (255) NULL,
    [BusinessTransactionAccountRootId]      INT           NULL,
    [PartyId]                            INT           NULL,
    [BusinessTransactionAccountPartyTypeId] INT           NULL,
    [IsDefaultBillingAccountFlag]        INT           NULL,
    [CreatedAt]                          DATETIME      NOT NULL,
    [UpdatedAt]                          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAccountPartyRoleOnBusinessTransactionAccountRootId]
    ON [dbo].[BusinessTransactionAccountPartyRole]([BusinessTransactionAccountRootId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAccountPartyRoleOnPartyId]
    ON [dbo].[BusinessTransactionAccountPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAccountPartyRoleOnBusinessTransactionAccountPartyTypeId]
    ON [dbo].[BusinessTransactionAccountPartyRole]([BusinessTransactionAccountPartyTypeId] ASC);

