CREATE TABLE [dbo].[DescriptiveAsset] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [ViewTypeId]          INT           NULL,
    [InternalIdentifier]  VARCHAR (255) NULL,
    [Description]         TEXT          NULL,
    [ExternalIdentifier]  VARCHAR (255) NULL,
    [ExternalIdSource]    VARCHAR (255) NULL,
    [DescribedRecordId]   INT           NULL,
    [DescribedRecordType] VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexDescriptiveAssetOnViewTypeId]
    ON [dbo].[DescriptiveAsset]([ViewTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [DescribedRecordIndex]
    ON [dbo].[DescriptiveAsset]([DescribedRecordId] ASC, [DescribedRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [DescriptiveAssetInternalIdentifierIndex]
    ON [dbo].[DescriptiveAsset]([InternalIdentifier] ASC);

