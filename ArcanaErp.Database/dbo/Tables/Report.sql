CREATE TABLE [dbo].[Report] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Name]               VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [TempateText]        TEXT          NULL,
    [QueryText]          TEXT          NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ReportInternalIdentifierIndex]
    ON [dbo].[Report]([InternalIdentifier] ASC);

