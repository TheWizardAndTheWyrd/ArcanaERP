CREATE TABLE [dbo].[Content] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Type]               VARCHAR (255) NULL,
    [Title]              VARCHAR (255) NULL,
    [PermaLink]          VARCHAR (255) NULL,
    [ExcerptHtml]        TEXT          NULL,
    [BodyHtml]           TEXT          NULL,
    [CreatedById]        INT           NULL,
    [UpdatedById]        INT           NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [DisplayTitle]       BIT           NULL,
    [Version]            INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexContentOnType]
    ON [dbo].[Content]([Type] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexContentOnCreatedById]
    ON [dbo].[Content]([CreatedById] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexContentOnUpdatedById]
    ON [dbo].[Content]([UpdatedById] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexContentOnPermaLink]
    ON [dbo].[Content]([PermaLink] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexContentOnVersion]
    ON [dbo].[Content]([Version] ASC);


GO
CREATE NONCLUSTERED INDEX [ContentIIdIndex]
    ON [dbo].[Content]([InternalIdentifier] ASC);

