CREATE TABLE [dbo].[WorkEffort] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]               INT           NULL,
    [LeftValue]              INT           NULL,
    [RightValue]             INT           NULL,
    [FacilityId]             INT           NULL,
    [ProjectedCostMoneyId]   INT           NULL,
    [ActualCostMoneyId]      INT           NULL,
    [FixedAssetId]           INT           NULL,
    [WorkEffortPuposeTypeId] INT           NULL,
    [WorkEffortTypeId]       INT           NULL,
    [Description]            VARCHAR (255) NULL,
    [Type]                   VARCHAR (255) NULL,
    [StartAt]                DATETIME      NULL,
    [EndAt]                  DATETIME      NULL,
    [WorkEffortRecordId]     INT           NULL,
    [WorkEffortRecordType]   VARCHAR (255) NULL,
    [WorkEffortItemId]       INT           NULL,
    [WorkEffortItemType]     VARCHAR (255) NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    [Comments]               TEXT          NULL,
    [PercentDone]            INT           NULL,
    [Duration]               INT           NULL,
    [DurationUnit]           VARCHAR (255) NULL,
    [Effort]                 INT           NULL,
    [EffortUnit]             VARCHAR (255) NULL,
    [BaseLineStartAt]        DATETIME      NULL,
    [BaseLineEndAt]          DATETIME      NULL,
    [BaseLinePercentDone]    INT           NULL,
    [ProjectId]              INT           NULL,
    [Sequence]               INT           DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [WorkEffortRecordIdTypeIndex]
    ON [dbo].[WorkEffort]([WorkEffortRecordId] ASC, [WorkEffortRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [WorkItemIndex]
    ON [dbo].[WorkEffort]([WorkEffortItemType] ASC, [WorkEffortItemId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortOnFixedAssetId]
    ON [dbo].[WorkEffort]([FixedAssetId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortOnfinishedAt]
    ON [dbo].[WorkEffort]([EndAt] ASC);


GO
CREATE NONCLUSTERED INDEX [WorkEffortProjectIndex]
    ON [dbo].[WorkEffort]([ProjectId] ASC);

