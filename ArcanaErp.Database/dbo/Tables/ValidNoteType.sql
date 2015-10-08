CREATE TABLE [dbo].[ValidNoteType] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [ValidNoteTypeRecordId]   INT           NULL,
    [ValidNoteTypeRecordType] VARCHAR (255) NULL,
    [NoteTypeId]              INT           NULL,
    [CreatedAt]               DATETIME      NOT NULL,
    [UpdatedAt]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ValidNoteTypeRecordIndex]
    ON [dbo].[ValidNoteType]([ValidNoteTypeRecordId] ASC, [ValidNoteTypeRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexValidNoteTypeOnNoteTypeId]
    ON [dbo].[ValidNoteType]([NoteTypeId] ASC);

