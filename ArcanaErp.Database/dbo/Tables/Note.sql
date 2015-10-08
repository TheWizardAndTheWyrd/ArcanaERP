CREATE TABLE [dbo].[Note] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [CreatedById]     INT           NULL,
    [Content]         TEXT          NULL,
    [NotedRecordId]   INT           NULL,
    [NotedRecordType] VARCHAR (255) NULL,
    [NoteTypeId]      INT           NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexNoteOnNotedRecordIdandNotedRecordType]
    ON [dbo].[Note]([NotedRecordId] ASC, [NotedRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexNoteOnNoteTypeId]
    ON [dbo].[Note]([NoteTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexNoteOnCreatedById]
    ON [dbo].[Note]([CreatedById] ASC);

