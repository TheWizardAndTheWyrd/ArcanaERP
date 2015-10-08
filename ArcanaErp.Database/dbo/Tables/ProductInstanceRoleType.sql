CREATE TABLE [dbo].[ProductInstanceRoleType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [Comments]           VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRoleTypeParentIdIndex]
    ON [dbo].[ProductInstanceRoleType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRoleTypeLeftValueIndex]
    ON [dbo].[ProductInstanceRoleType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRoleTypeRightValueIndex]
    ON [dbo].[ProductInstanceRoleType]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipTypeParentIdIndex]
    ON [dbo].[ProductInstanceRoleType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipTypeLeftValueIndex]
    ON [dbo].[ProductInstanceRoleType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRelationshipTypeRightValueIndex]
    ON [dbo].[ProductInstanceRoleType]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRoleTypeParentIdIndex]
    ON [dbo].[ProductInstanceRoleType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRoleTypeLeftValueIndex]
    ON [dbo].[ProductInstanceRoleType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRoleTypeRightValueIndex]
    ON [dbo].[ProductInstanceRoleType]([RightValue] ASC);

