CREATE TABLE [dbo].[preferences] (
    [id]                   INT      IDENTITY (1, 1) NOT NULL,
    [preference_option_id] INT      NULL,
    [preference_type_id]   INT      NULL,
    [created_at]           DATETIME NOT NULL,
    [updated_at]           DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_preferences_on_preference_option_id]
    ON [dbo].[preferences]([preference_option_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_preferences_on_preference_type_id]
    ON [dbo].[preferences]([preference_type_id] ASC);

