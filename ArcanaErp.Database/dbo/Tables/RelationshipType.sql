CREATE TABLE [dbo].[RelationshipType] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]            INT           NULL,
    [LeftValue]           INT           NULL,
    [RightValue]          INT           NULL,
    [ValidFromRoleTypeId] INT           NULL,
    [ValidToRoleTypeId]   INT           NULL,
    [Name]                VARCHAR (255) NULL,
    [Description]         VARCHAR (255) NULL,
    [InternalIdentifier]  VARCHAR (255) NULL,
    [ExternalIdentifier]  VARCHAR (255) NULL,
    [ExternalIdsource]    VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexRelationshipTypeOnValidFromRoleTypeId]
    ON [dbo].[RelationshipType]([ValidFromRoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexRelationshipTypeOnValidToRoleTypeId]
    ON [dbo].[RelationshipType]([ValidToRoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [RelationshipTypeParentIdIndex]
    ON [dbo].[RelationshipType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [RelationshipTypeInternalIdentifierIndex]
    ON [dbo].[RelationshipType]([InternalIdentifier] ASC);

