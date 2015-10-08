CREATE TABLE [dbo].[RequirementPartyRole] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [RequirementId]      INT           NULL,
    [PartyId]            INT           NULL,
    [RoleTypeId]         INT           NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [ValidFrom]          DATETIME      NULL,
    [ValidTo]            DATETIME      NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [RequirementPartyRoleIndex]
    ON [dbo].[RequirementPartyRole]([RequirementId] ASC, [PartyId] ASC, [RoleTypeId] ASC);

