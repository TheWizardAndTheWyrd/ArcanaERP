CREATE TABLE [dbo].[WebSitenavItems] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [WebSitenavId]     INT           NULL,
    [Title]            VARCHAR (255) NULL,
    [Url]              VARCHAR (255) NULL,
    [Position]         INT           DEFAULT ((0)) NULL,
    [linkedToItemId]   INT           NULL,
    [linkedToItemType] VARCHAR (255) NULL,
    [ParentId]         INT           NULL,
    [LeftValue]        INT           NULL,
    [RightValue]       INT           NULL,
    [CreatedAt]        DATETIME      NOT NULL,
    [UpdatedAt]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [linkedToIndex]
    ON [dbo].[WebSitenavItems]([linkedToItemId] ASC, [linkedToItemType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnWebSitenavId]
    ON [dbo].[WebSitenavItems]([WebSitenavId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnPosition]
    ON [dbo].[WebSitenavItems]([Position] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnParentId]
    ON [dbo].[WebSitenavItems]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnLeftValue]
    ON [dbo].[WebSitenavItems]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitenavItemsOnRightValue]
    ON [dbo].[WebSitenavItems]([RightValue] ASC);

