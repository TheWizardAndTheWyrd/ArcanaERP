CREATE TABLE [dbo].[website_hosts] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [website_id] INT           NULL,
    [host]       VARCHAR (255) NULL,
    [created_at] DATETIME      NOT NULL,
    [updated_at] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_website_hosts_on_website_id]
    ON [dbo].[website_hosts]([website_id] ASC);

