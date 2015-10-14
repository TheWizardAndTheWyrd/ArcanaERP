CREATE TABLE [dbo].[WebSiteSectionVersion] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [WebSiteSectionId]   INT           NULL,
    [Version]            INT           NULL,
    [Title]              VARCHAR (255) DEFAULT (NULL) NULL,
    [WebSiteId]          INT           DEFAULT (NULL) NULL,
    [Path]               VARCHAR (255) DEFAULT (NULL) NULL,
    [PermaLink]          VARCHAR (255) DEFAULT (NULL) NULL,
    [Layout]             TEXT          DEFAULT (NULL) NULL,
    [InMenu]             BIT           DEFAULT (NULL) NULL,
    [Position]           INT           DEFAULT ((0)) NULL,
    [UseMarkDown]        BIT           DEFAULT (NULL) NULL,
    [InternalIdentifier] VARCHAR (255) DEFAULT (NULL) NULL,
    [RenderBaseLayout]   BIT           DEFAULT ('t') NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    [VersionedType]      VARCHAR (255) DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionVersionsOnWebSiteSectionId]
    ON [dbo].[WebSiteSectionVersion]([WebSiteSectionId] ASC);


GO
CREATE NONCLUSTERED INDEX [WebSiteSectionVersionsWebSiteIdIndex]
    ON [dbo].[WebSiteSectionVersion]([WebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [WebSiteSectionVersionsInternalIdentifierIndex]
    ON [dbo].[WebSiteSectionVersion]([InternalIdentifier] ASC);

