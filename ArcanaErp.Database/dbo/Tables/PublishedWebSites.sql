CREATE TABLE [dbo].[PublishedWebSites] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [WebSiteId]     INT             NULL,
    [Comment]       TEXT            NULL,
    [Version]       DECIMAL (18, 6) NULL,
    [Active]        BIT             NULL,
    [PublishedById] INT             NULL,
    [CreatedAt]     DATETIME        NOT NULL,
    [UpdatedAt]     DATETIME        NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedWebSitesOnWebSiteId]
    ON [dbo].[PublishedWebSites]([WebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedWebSitesOnVersion]
    ON [dbo].[PublishedWebSites]([Version] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedWebSitesOnActive]
    ON [dbo].[PublishedWebSites]([Active] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedWebSitesOnPublishedById]
    ON [dbo].[PublishedWebSites]([PublishedById] ASC);

