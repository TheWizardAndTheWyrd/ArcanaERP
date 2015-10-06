CREATE TABLE [dbo].[valid_note_types] (
    [id]                          INT           IDENTITY (1, 1) NOT NULL,
    [valid_note_type_record_id]   INT           NULL,
    [valid_note_type_record_type] VARCHAR (255) NULL,
    [note_type_id]                INT           NULL,
    [created_at]                  DATETIME      NOT NULL,
    [updated_at]                  DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [valid_note_type_record_idx]
    ON [dbo].[valid_note_types]([valid_note_type_record_id] ASC, [valid_note_type_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_valid_note_types_on_note_type_id]
    ON [dbo].[valid_note_types]([note_type_id] ASC);

