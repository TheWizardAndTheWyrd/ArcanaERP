CREATE TABLE [dbo].[sessions] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [session_id] VARCHAR (255) NOT NULL,
    [data]       TEXT          NULL,
    [created_at] DATETIME      NOT NULL,
    [updated_at] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_sessions_on_session_id]
    ON [dbo].[sessions]([session_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_sessions_on_updated_at]
    ON [dbo].[sessions]([updated_at] ASC);

