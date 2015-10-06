CREATE TABLE [dbo].[notes] (
    [id]                INT           IDENTITY (1, 1) NOT NULL,
    [created_by_id]     INT           NULL,
    [content]           TEXT          NULL,
    [noted_record_id]   INT           NULL,
    [noted_record_type] VARCHAR (255) NULL,
    [note_type_id]      INT           NULL,
    [created_at]        DATETIME      NOT NULL,
    [updated_at]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_notes_on_noted_record_id_and_noted_record_type]
    ON [dbo].[notes]([noted_record_id] ASC, [noted_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_notes_on_note_type_id]
    ON [dbo].[notes]([note_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_notes_on_created_by_id]
    ON [dbo].[notes]([created_by_id] ASC);

