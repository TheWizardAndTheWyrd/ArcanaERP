CREATE TABLE [dbo].[WebSiteSectionContent] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [WebSiteSectionId] INT           NULL,
    [ContentId]        INT           NULL,
    [ContentArea]      VARCHAR (255) NULL,
    [Position]         INT           DEFAULT ((0)) NULL,
    [CreatedAt]        DATETIME      NOT NULL,
    [UpdatedAt]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionContentOnWebSiteSectionId]
    ON [dbo].[WebSiteSectionContent]([WebSiteSectionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionContentOnContentId]
    ON [dbo].[WebSiteSectionContent]([ContentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionContentOnPosition]
    ON [dbo].[WebSiteSectionContent]([Position] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteSectionContentOnContentarea]
    ON [dbo].[WebSiteSectionContent]([Contentarea] ASC);

