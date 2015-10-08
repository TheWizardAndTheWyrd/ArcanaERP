CREATE TABLE [dbo].[WorkEffortFixedAssetServiced] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [WorkEffortId] INT      NULL,
    [FixedAssetId] INT      NULL,
    [CreatedAt]    DATETIME NOT NULL,
    [UpdatedAt]    DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortFixedAssetServicedOnWorkEffortId]
    ON [dbo].[WorkEffortFixedAssetServiced]([WorkEffortId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortFixedAssetServicedOnFixedAssetId]
    ON [dbo].[WorkEffortFixedAssetServiced]([FixedAssetId] ASC);

