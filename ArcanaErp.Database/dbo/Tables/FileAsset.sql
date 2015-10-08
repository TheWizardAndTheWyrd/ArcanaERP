CREATE TABLE [dbo].[FileAsset] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Type]            VARCHAR (255) NULL,
    [Name]            VARCHAR (255) NULL,
    [Directory]       VARCHAR (255) NULL,
    [DataFileName]    VARCHAR (255) NULL,
    [DataContentType] VARCHAR (255) NULL,
    [DataFileSize]    INT           NULL,
    [DataUpdatedAt]   DATETIME      NULL,
    [Width]           VARCHAR (255) NULL,
    [Height]          VARCHAR (255) NULL,
    [ScopedBy]        TEXT          NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexFileAssetOnType]
    ON [dbo].[FileAsset]([Type] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexFileAssetOnName]
    ON [dbo].[FileAsset]([Name] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexFileAssetOnDirectory]
    ON [dbo].[FileAsset]([Directory] ASC);

