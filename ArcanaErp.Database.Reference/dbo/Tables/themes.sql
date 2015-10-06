CREATE TABLE [dbo].[themes] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [website_id] INT           NULL,
    [name]       VARCHAR (255) NULL,
    [theme_id]   VARCHAR (255) NULL,
    [author]     VARCHAR (255) NULL,
    [version]    INT           NULL,
    [homepage]   VARCHAR (255) NULL,
    [summary]    TEXT          NULL,
    [active]     INT           NULL,
    [created_at] DATETIME      NOT NULL,
    [updated_at] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_themes_on_website_id]
    ON [dbo].[themes]([website_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_themes_on_active]
    ON [dbo].[themes]([active] ASC);

