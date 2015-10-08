CREATE TABLE [dbo].[NoteType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [NoteTypeRecordId]   INT           NULL,
    [NoteTypeRecordType] VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NoteTypeRecordIndex]
    ON [dbo].[NoteType]([NoteTypeRecordId] ASC, [NoteTypeRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [NoteTypeParentIdIndex]
    ON [dbo].[NoteType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [NoteTypeInternalIdentifierIndex]
    ON [dbo].[NoteType]([InternalIdentifier] ASC);

