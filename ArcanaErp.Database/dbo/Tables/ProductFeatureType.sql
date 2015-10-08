CREATE TABLE [dbo].[ProductFeatureType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalId]         VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductftTypeIIdIndex]
    ON [dbo].[ProductFeatureType]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductftTypeNestedSetIndex]
    ON [dbo].[ProductFeatureType]([RightValue] ASC, [LeftValue] ASC, [ParentId] ASC);

