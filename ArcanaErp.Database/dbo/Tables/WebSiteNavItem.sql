CREATE TABLE [dbo].[WebSitenavItem] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [WebSiteNavId]     INT           NULL,
    [Title]            VARCHAR (255) NULL,
    [Url]              VARCHAR (255) NULL,
    [Position]         INT           DEFAULT ((0)) NULL,
    [LinkedToItemId]   INT           NULL,
    [LinkedToItemType] VARCHAR (255) NULL,
    [ParentId]         INT           NULL,
    [LeftValue]        INT           NULL,
    [RightValue]       INT           NULL,
    [CreatedAt]        DATETIME      NOT NULL,
    [UpdatedAt]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [linkedToIndex]
    ON [dbo].[WebSiteNavItem]([LinkedToItemId] ASC, [LinkedToItemType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnWebSitenavId]
    ON [dbo].[WebSiteNavItem]([WebSiteNavId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnPosition]
    ON [dbo].[WebSiteNavItem]([Position] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnParentId]
    ON [dbo].[WebSiteNavItem]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnLeftValue]
    ON [dbo].[WebSiteNavItem]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnRightValue]
    ON [dbo].[WebSiteNavItem]([RightValue] ASC);

