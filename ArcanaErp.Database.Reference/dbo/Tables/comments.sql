CREATE TABLE [dbo].[comments] (
    [id]                    INT           IDENTITY (1, 1) NOT NULL,
    [commentor_name]        VARCHAR (255) NULL,
    [email]                 VARCHAR (255) NULL,
    [comment]               TEXT          NULL,
    [approved]              INT           NULL,
    [approved_at]           DATETIME      NULL,
    [user_id]               INT           NULL,
    [commented_record_id]   INT           NULL,
    [commented_record_type] VARCHAR (255) NULL,
    [created_at]            DATETIME      NOT NULL,
    [updated_at]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [commented_record_idx]
    ON [dbo].[comments]([commented_record_id] ASC, [commented_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_comments_on_approved]
    ON [dbo].[comments]([approved] ASC);


GO
CREATE NONCLUSTERED INDEX [index_comments_on_user_id]
    ON [dbo].[comments]([user_id] ASC);

