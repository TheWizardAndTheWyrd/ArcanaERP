CREATE TABLE [dbo].[ProductInstanceRelationshipType] (
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
CREATE NONCLUSTERED INDEX [ProductRelationshipTypeParentIdIndex]
    ON [dbo].[ProductInstanceRelationshipType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductRelationshipTypeLeftValueIndex]
    ON [dbo].[ProductInstanceRelationshipType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductRelationshipTypeRightValueIndex]
    ON [dbo].[ProductInstanceRelationshipType]([RightValue] ASC);

