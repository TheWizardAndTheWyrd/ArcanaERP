CREATE TABLE [dbo].[notifications] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [type]                 VARCHAR (255) NULL,
    [created_by_id]        INT           NULL,
    [message]              TEXT          NULL,
    [notification_type_id] INT           NULL,
    [current_state]        VARCHAR (255) NULL,
    [created_at]           DATETIME      NOT NULL,
    [updated_at]           DATETIME      NOT NULL,
    [custom_fields]        TEXT          NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_notifications_on_notification_type_id]
    ON [dbo].[notifications]([notification_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_notifications_on_created_by_id]
    ON [dbo].[notifications]([created_by_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_notifications_on_type]
    ON [dbo].[notifications]([type] ASC);

