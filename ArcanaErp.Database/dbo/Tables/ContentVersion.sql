CREATE TABLE [dbo].[ContentVersions] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ContentId]          INT           NULL,
    [Version]            INT           NULL,
    [Title]              VARCHAR (255) DEFAULT (NULL) NULL,
    [PermaLink]          VARCHAR (255) DEFAULT (NULL) NULL,
    [ExcerptHtml]        TEXT          DEFAULT (NULL) NULL,
    [BodyHtml]           TEXT          DEFAULT (NULL) NULL,
    [CreatedById]        INT           DEFAULT (NULL) NULL,
    [UpdatedById]        INT           DEFAULT (NULL) NULL,
    [InternalIdentifier] VARCHAR (255) DEFAULT (NULL) NULL,
    [DisplayTitle]       BIT           DEFAULT (NULL) NULL,
    [CreatedAt]          DATETIME      DEFAULT (NULL) NOT NULL,
    [UpdatedAt]          DATETIME      DEFAULT (NULL) NOT NULL,
    [VersionedType]      VARCHAR (255) DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexContentVersionsOnContentId]
    ON [dbo].[ContentVersions]([ContentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ContentVersionsCreatedByIdIndex]
    ON [dbo].[ContentVersions]([CreatedById] ASC);


GO
CREATE NONCLUSTERED INDEX [ContentVersionsUpdatedByIdIndex]
    ON [dbo].[ContentVersions]([UpdatedById] ASC);


GO
CREATE NONCLUSTERED INDEX [ContentVersionsInternalIdentifierIndex]
    ON [dbo].[ContentVersions]([InternalIdentifier] ASC);

