CREATE TABLE [dbo].[WorkEffortFixedAssetStandard] (
    [Id]                   INT          IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]         INT          NULL,
    [FixedAssetTypeId]     INT          NULL,
    [EstimatedQuantity]    DECIMAL (18) NULL,
    [EstimatedDuration]    DECIMAL (18) NULL,
    [EstimatedCostMoneyId] INT          NULL,
    [CreatedAt]            DATETIME     NOT NULL,
    [UpdatedAt]            DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortFixedAssetStandardOnWorkEffortId]
    ON [dbo].[WorkEffortFixedAssetStandard]([WorkEffortId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortFixedAssetStandardOnFixedAssetTypeId]
    ON [dbo].[WorkEffortFixedAssetStandard]([FixedAssetTypeId] ASC);

