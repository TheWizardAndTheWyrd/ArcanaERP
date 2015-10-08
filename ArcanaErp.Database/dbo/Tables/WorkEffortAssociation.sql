CREATE TABLE [dbo].[WorkEffortAssociation] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [WorkEffortAssociationTypeId] INT           NULL,
    [Description]                 VARCHAR (255) NULL,
    [WorkEffortIdFrom]            INT           NULL,
    [WorkEffortIdTo]              INT           NULL,
    [RoleTypeIdFrom]              INT           NULL,
    [RoleTypeIdTo]                INT           NULL,
    [RelationshipTypeId]          INT           NULL,
    [EffectiveFrom]               DATETIME      NULL,
    [EffectiveThrough]            DATETIME      NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    [Lag]                         INT           NULL,
    [LagUnit]                     VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortAssociationOnRelationshipTypeId]
    ON [dbo].[WorkEffortAssociation]([RelationshipTypeId] ASC);

