CREATE TABLE [dbo].[WebSiteNav] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [WebSiteId] INT           NULL,
    [Name]      VARCHAR (255) NULL,
    [CreatedAt] DATETIME      NOT NULL,
    [UpdatedAt] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavsOnWebSiteId]
    ON [dbo].[WebSiteNav]([WebSiteId] ASC);

