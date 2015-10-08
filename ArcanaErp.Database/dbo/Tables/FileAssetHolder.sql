CREATE TABLE [dbo].[FileAssetHolder] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [FileAssetId]         INT           NULL,
    [FileAssetHolderId]   INT           NULL,
    [FileAssetHolderType] VARCHAR (255) NULL,
    [ScopedBy]            TEXT          NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FileAssetHolderFileIdIndex]
    ON [dbo].[FileAssetHolder]([FileAssetId] ASC);


GO
CREATE NONCLUSTERED INDEX [FileAssetHolderIndex]
    ON [dbo].[FileAssetHolder]([FileAssetHolderId] ASC, [FileAssetHolderType] ASC);

