CREATE TABLE [dbo].[website_inquiries] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [website_id]    INT           NULL,
    [first_name]    VARCHAR (255) NULL,
    [last_name]     VARCHAR (255) NULL,
    [email]         VARCHAR (255) NULL,
    [message]       TEXT          NULL,
    [created_by_id] INT           NULL,
    [created_at]    DATETIME      NOT NULL,
    [updated_at]    DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_website_inquiries_on_website_id]
    ON [dbo].[website_inquiries]([website_id] ASC);


GO
CREATE NONCLUSTERED INDEX [inquiry_created_by_idx]
    ON [dbo].[website_inquiries]([created_by_id] ASC);

