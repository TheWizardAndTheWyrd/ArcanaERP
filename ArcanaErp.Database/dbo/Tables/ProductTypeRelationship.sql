CREATE TABLE [dbo].[ProductTypeRelationship] (
    [Id]                            INT           IDENTITY (1, 1) NOT NULL,
    [ProductTypeRelationshipTypeId] INT           NULL,
    [Description]                   VARCHAR (255) NULL,
    [ProductTypeIdFrom]             INT           NULL,
    [ProductTypeIdTo]               INT           NULL,
    [RoleTypeIdFrom]                INT           NULL,
    [RoleTypeIdTo]                  INT           NULL,
    [StatusTypeId]                  INT           NULL,
    [FromDate]                      DATE          NULL,
    [ThroughDate]                   DATE          NULL,
    [CreatedAt]                     DATETIME      NOT NULL,
    [UpdatedAt]                     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipTypeIndex]
    ON [dbo].[ProductTypeRelationship]([ProductTypeRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipTypeFromIndex]
    ON [dbo].[ProductTypeRelationship]([ProductTypeIdFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipTypeToIndex]
    ON [dbo].[ProductTypeRelationship]([ProductTypeIdTo] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipRoleFromIndex]
    ON [dbo].[ProductTypeRelationship]([RoleTypeIdFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipRoleToIndex]
    ON [dbo].[ProductTypeRelationship]([RoleTypeIdTo] ASC);

