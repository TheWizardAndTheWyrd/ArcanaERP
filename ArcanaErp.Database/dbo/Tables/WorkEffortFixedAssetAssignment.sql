CREATE TABLE [dbo].[WorkEffortFixedAssetAssignment] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [WorkEffortId] INT      NULL,
    [FixedAssetId] INT      NULL,
    [CreatedAt]    DATETIME NOT NULL,
    [UpdatedAt]    DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [WorkEffortFixedAssetassignIndex]
    ON [dbo].[WorkEffortFixedAssetAssignment]([WorkEffortId] ASC, [FixedAssetId] ASC);

