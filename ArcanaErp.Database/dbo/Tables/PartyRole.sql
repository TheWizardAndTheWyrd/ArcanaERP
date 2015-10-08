CREATE TABLE [dbo].[PartyRole] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Type]       VARCHAR (255) NULL,
    [PartyId]    INT           NULL,
    [RoleTypeId] INT           NULL,
    [CreatedAt]  DATETIME      NOT NULL,
    [UpdatedAt]  DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPartyRoleOnPartyId]
    ON [dbo].[PartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartyRoleOnRoleTypeId]
    ON [dbo].[PartyRole]([RoleTypeId] ASC);

