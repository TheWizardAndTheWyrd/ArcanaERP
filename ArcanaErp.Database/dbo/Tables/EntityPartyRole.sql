CREATE TABLE [dbo].[EntityPartyRole] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [PartyId]          INT           NULL,
    [RoleTypeId]       INT           NULL,
    [EntityRecordId]   INT           NULL,
    [EntityRecordType] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexEntityPartyRoleOnPartyId]
    ON [dbo].[EntityPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexEntityPartyRoleOnRoleTypeId]
    ON [dbo].[EntityPartyRole]([RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [EntityPartyRoleEntityRecordIndex]
    ON [dbo].[EntityPartyRole]([EntityRecordId] ASC, [EntityRecordType] ASC);

