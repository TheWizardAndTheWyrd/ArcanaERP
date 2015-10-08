CREATE TABLE [dbo].[WebSiteInquiry] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [WebSiteId]   INT           NULL,
    [FirstName]   VARCHAR (255) NULL,
    [LastName]    VARCHAR (255) NULL,
    [Email]       VARCHAR (255) NULL,
    [Message]     TEXT          NULL,
    [CreatedById] INT           NULL,
    [CreatedAt]   DATETIME      NOT NULL,
    [UpdatedAt]   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWebSiteInquiryOnWebSiteId]
    ON [dbo].[WebSiteInquiry]([WebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [InquiryCreatedByIndex]
    ON [dbo].[WebSiteInquiry]([CreatedById] ASC);

