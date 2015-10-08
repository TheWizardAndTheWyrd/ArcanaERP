CREATE TABLE [dbo].[WebSiteHost] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [WebSiteId] INT           NULL,
    [Host]      VARCHAR (255) NULL,
    [CreatedAt] DATETIME      NOT NULL,
    [UpdatedAt] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteHostOnWebSiteId]
    ON [dbo].[WebSiteHost]([WebSiteId] ASC);

