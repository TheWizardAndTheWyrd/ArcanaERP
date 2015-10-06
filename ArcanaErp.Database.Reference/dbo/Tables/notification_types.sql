CREATE TABLE [dbo].[notification_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [description]         VARCHAR (255) NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_notification_types_on_internal_identifier]
    ON [dbo].[notification_types]([internal_identifier] ASC);

