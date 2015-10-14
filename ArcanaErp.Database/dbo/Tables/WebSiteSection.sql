CREATE TABLE [dbo].[WebSiteSection] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Title]              VARCHAR (255) NULL,
    [Type]               VARCHAR (255) NULL,
    [WebSiteId]          INT           NULL,
    [Path]               VARCHAR (255) NULL,
    [PermaLink]          VARCHAR (255) NULL,
    [Layout]             TEXT          NULL,
    [InMenu]             BIT           NULL,
    [Position]           INT           DEFAULT ((0)) NULL,
    [UseMarkDown]        BIT           NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Version]            INT           NULL,
    [RenderBaseLayout]   BIT           DEFAULT ('t') NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionOnPermaLink]
    ON [dbo].[WebSiteSection]([PermaLink] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionOnWebSiteId]
    ON [dbo].[WebSiteSection]([WebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionOnPosition]
    ON [dbo].[WebSiteSection]([Position] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionOnParentId]
    ON [dbo].[WebSiteSection]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionOnLeftValue]
    ON [dbo].[WebSiteSection]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionOnRightValue]
    ON [dbo].[WebSiteSection]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionOnVersion]
    ON [dbo].[WebSiteSection]([Version] ASC);


GO
CREATE NONCLUSTERED INDEX [SectionIdIndex]
    ON [dbo].[WebSiteSection]([InternalIdentifier] ASC);

