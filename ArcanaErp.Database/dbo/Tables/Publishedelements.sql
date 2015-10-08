CREATE TABLE [dbo].[Publishedelements] (
    [Id]                         INT           IDENTITY (1, 1) NOT NULL,
    [PublishedWebSiteId]         INT           NULL,
    [PublishedelementRecordId]   INT           NULL,
    [PublishedelementRecordType] VARCHAR (255) NULL,
    [Version]                    INT           NULL,
    [PublishedById]              INT           NULL,
    [CreatedAt]                  DATETIME      NOT NULL,
    [UpdatedAt]                  DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PublishedelmIndex]
    ON [dbo].[Publishedelements]([PublishedelementRecordId] ASC, [PublishedelementRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedelementsOnPublishedWebSiteId]
    ON [dbo].[Publishedelements]([PublishedWebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedelementsOnVersion]
    ON [dbo].[Publishedelements]([Version] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPublishedelementsOnPublishedById]
    ON [dbo].[Publishedelements]([PublishedById] ASC);

