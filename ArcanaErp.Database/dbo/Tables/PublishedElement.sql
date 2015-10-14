CREATE TABLE [dbo].[PublishedElement] (
    [Id]                         INT           IDENTITY (1, 1) NOT NULL,
    [PublishedWebSiteId]         INT           NULL,
    [PublishedElementRecordId]   INT           NULL,
    [PublishedElementRecordType] VARCHAR (255) NULL,
    [Version]                    INT           NULL,
    [PublishedById]              INT           NULL,
    [CreatedAt]                  DATETIME      NOT NULL,
    [UpdatedAt]                  DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PublishedelmIndex]
    ON [dbo].[PublishedElement]([PublishedElementRecordId] ASC, [PublishedElementRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedelementsOnPublishedWebSiteId]
    ON [dbo].[PublishedElement]([PublishedWebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedelementsOnVersion]
    ON [dbo].[PublishedElement]([Version] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedelementsOnPublishedById]
    ON [dbo].[PublishedElement]([PublishedById] ASC);

