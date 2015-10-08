CREATE TABLE [dbo].[PartyRelationship] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [PartyIdFrom]        INT           NULL,
    [PartyIdTo]          INT           NULL,
    [RoleTypeIdFrom]     INT           NULL,
    [RoleTypeIdTo]       INT           NULL,
    [StatusTypeId]       INT           NULL,
    [PriorityTypeId]     INT           NULL,
    [RelationshipTypeId] INT           NULL,
    [FromDate]           DATE          NULL,
    [thruDate]           DATE          NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdsource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPartyRelationshipOnStatusTypeId]
    ON [dbo].[PartyRelationship]([StatusTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartyRelationshipOnPriorityTypeId]
    ON [dbo].[PartyRelationship]([PriorityTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartyRelationshipOnRelationshipTypeId]
    ON [dbo].[PartyRelationship]([RelationshipTypeId] ASC);

