CREATE TABLE [dbo].[website_navs] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [website_id] INT           NULL,
    [name]       VARCHAR (255) NULL,
    [created_at] DATETIME      NOT NULL,
    [updated_at] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_website_navs_on_website_id]
    ON [dbo].[website_navs]([website_id] ASC);

