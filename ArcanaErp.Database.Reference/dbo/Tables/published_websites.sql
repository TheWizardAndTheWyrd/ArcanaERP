CREATE TABLE [dbo].[published_websites] (
    [id]              INT             IDENTITY (1, 1) NOT NULL,
    [website_id]      INT             NULL,
    [comment]         TEXT            NULL,
    [version]         DECIMAL (18, 6) NULL,
    [active]          BIT             NULL,
    [published_by_id] INT             NULL,
    [created_at]      DATETIME        NOT NULL,
    [updated_at]      DATETIME        NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_published_websites_on_website_id]
    ON [dbo].[published_websites]([website_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_published_websites_on_version]
    ON [dbo].[published_websites]([version] ASC);


GO
CREATE NONCLUSTERED INDEX [index_published_websites_on_active]
    ON [dbo].[published_websites]([active] ASC);


GO
CREATE NONCLUSTERED INDEX [index_published_websites_on_published_by_id]
    ON [dbo].[published_websites]([published_by_id] ASC);

