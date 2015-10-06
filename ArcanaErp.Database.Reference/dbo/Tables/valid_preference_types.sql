CREATE TABLE [dbo].[valid_preference_types] (
    [id]                      INT           IDENTITY (1, 1) NOT NULL,
    [preference_type_id]      INT           NULL,
    [preferenced_record_id]   INT           NULL,
    [preferenced_record_type] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [valid_preference_types_preference_type_id_idx]
    ON [dbo].[valid_preference_types]([preference_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [valid_preference_types_preferenced_record_id_idx]
    ON [dbo].[valid_preference_types]([preferenced_record_id] ASC);

