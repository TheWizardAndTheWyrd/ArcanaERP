CREATE TABLE [dbo].[user_preferences] (
    [id]                      INT           IDENTITY (1, 1) NOT NULL,
    [user_id]                 INT           NULL,
    [preference_id]           INT           NULL,
    [preferenced_record_id]   INT           NULL,
    [preferenced_record_type] VARCHAR (255) NULL,
    [created_at]              DATETIME      NOT NULL,
    [updated_at]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_user_preferences_on_user_id]
    ON [dbo].[user_preferences]([user_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_user_preferences_on_preference_id]
    ON [dbo].[user_preferences]([preference_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_user_preferences_on_preferenced_record_id]
    ON [dbo].[user_preferences]([preferenced_record_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_user_preferences_on_preferenced_record_type]
    ON [dbo].[user_preferences]([preferenced_record_type] ASC);

