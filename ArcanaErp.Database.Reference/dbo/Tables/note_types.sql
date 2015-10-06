CREATE TABLE [dbo].[note_types] (
    [id]                    INT           IDENTITY (1, 1) NOT NULL,
    [parent_id]             INT           NULL,
    [lft]                   INT           NULL,
    [rgt]                   INT           NULL,
    [description]           VARCHAR (255) NULL,
    [internal_identifier]   VARCHAR (255) NULL,
    [external_identifier]   VARCHAR (255) NULL,
    [note_type_record_id]   INT           NULL,
    [note_type_record_type] VARCHAR (255) NULL,
    [created_at]            DATETIME      NOT NULL,
    [updated_at]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [note_type_record_idx]
    ON [dbo].[note_types]([note_type_record_id] ASC, [note_type_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [note_types_parent_id_idx]
    ON [dbo].[note_types]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [note_types_internal_identifier_idx]
    ON [dbo].[note_types]([internal_identifier] ASC);

