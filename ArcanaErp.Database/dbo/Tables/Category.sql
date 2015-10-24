CREATE TABLE [dbo].[Category] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
	[ExternalIdSource]   VARCHAR (255) NULL,
    [FromDate]           DATETIME      NULL,
    [ThroughDate]        DATETIME      NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [CategoryRecordId]   INT           NULL,
    [CategoryRecordType] VARCHAR (255) NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CategoryPolymorphic]
    ON [dbo].[Category]([CategoryRecordId] ASC, [CategoryRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [CategoryInternalIdentifierIndex]
    ON [dbo].[Category]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [CategoryParentIdIndex]
    ON [dbo].[Category]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [CategoryLeftValueIndex]
    ON [dbo].[Category]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [CategoryRightValueIndex]
    ON [dbo].[Category]([RightValue] ASC);

