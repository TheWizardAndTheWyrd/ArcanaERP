CREATE TABLE [dbo].[WebSites] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Name]               VARCHAR (255) NULL,
    [Title]              VARCHAR (255) NULL,
    [SubTitle]           VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Publishing]         BIT           DEFAULT ('f') NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [WebSitesInternalIdentifierIndex]
    ON [dbo].[WebSites]([InternalIdentifier] ASC);

