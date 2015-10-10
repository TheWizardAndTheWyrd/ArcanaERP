CREATE TABLE [dbo].[FixedAsset] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [FixedAssetTypeId]     INT           NULL,
    [Description]          VARCHAR (255) NULL,
    [Comments]             VARCHAR (255) NULL,
    [InternalIdentifier]   VARCHAR (255) NULL,
    [ExternalIdentifier]   VARCHAR (255) NULL,
    [ExternalIdSource]     VARCHAR (255) NULL,
    [FixedAssetRecordType] VARCHAR (255) NULL,
    [FixedAssetRecordId]   INT           NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FixedAssetRecordIndex]
    ON [dbo].[FixedAsset]([FixedAssetRecordType] ASC, [FixedAssetRecordId] ASC);


GO
CREATE NONCLUSTERED INDEX [FixedAssetFixedAssetTypeIndex]
    ON [dbo].[FixedAsset]([FixedAssetTypeId] ASC);

