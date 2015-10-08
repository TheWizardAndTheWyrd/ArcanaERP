CREATE TABLE [dbo].[WorkEffortGoodStandard] (
    [Id]                   INT          IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]         INT          NULL,
    [GoodTypeId]           INT          NULL,
    [EstimatedQuantity]    DECIMAL (18) NULL,
    [EstimatedCostMoneyId] INT          NULL,
    [CreatedAt]            DATETIME     NOT NULL,
    [UpdatedAt]            DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortGoodStandardOnWorkEffortId]
    ON [dbo].[WorkEffortGoodStandard]([WorkEffortId] ASC);

