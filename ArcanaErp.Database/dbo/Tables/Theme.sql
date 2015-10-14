CREATE TABLE [dbo].[Theme] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [WebSiteId] INT           NULL,
    [Name]      VARCHAR (255) NULL,
    [ThemeId]   VARCHAR (255) NULL,
    [Author]    VARCHAR (255) NULL,
    [Version]   INT           NULL,
    [HomePage]  VARCHAR (255) NULL,
    [Summary]   TEXT          NULL,
    [Active]    INT           NULL,
    [CreatedAt] DATETIME      NOT NULL,
    [UpdatedAt] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexThemeOnWebSiteId]
    ON [dbo].[Theme]([WebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexThemeOnActive]
    ON [dbo].[Theme]([Active] ASC);

