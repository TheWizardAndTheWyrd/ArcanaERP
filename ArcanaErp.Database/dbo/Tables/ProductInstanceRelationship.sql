CREATE TABLE [dbo].[ProductInstanceRelationship] (
    [Id]                                INT           IDENTITY (1, 1) NOT NULL,
    [ProductInstanceRelationshipTypeId] INT           NULL,
    [Description]                       VARCHAR (255) NULL,
    [ProductInstanceIdFrom]             INT           NULL,
    [ProductInstanceIdTo]               INT           NULL,
    [RoleTypeIdFrom]                    INT           NULL,
    [RoleTypeIdTo]                      INT           NULL,
    [FromDate]                          DATE          NULL,
    [ThroughDate]                       DATE          NULL,
    [CreatedAt]                         DATETIME      NOT NULL,
    [UpdatedAt]                         DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRelationshipTypeIndex]
    ON [dbo].[ProductInstanceRelationship]([ProductInstanceRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRelationshipInstanceFromIndex]
    ON [dbo].[ProductInstanceRelationship]([ProductInstanceIdFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRelationshipInstanceToIndex]
    ON [dbo].[ProductInstanceRelationship]([ProductInstanceIdTo] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRelationshipTypeFromIndex]
    ON [dbo].[ProductInstanceRelationship]([RoleTypeIdFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRelationshipTypeToIndex]
    ON [dbo].[ProductInstanceRelationship]([RoleTypeIdTo] ASC);

