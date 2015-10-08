CREATE TABLE [dbo].[WorkEffortSkillStandard] (
    [Id]                    INT          IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]          INT          NULL,
    [SkillTypeId]           INT          NULL,
    [EstimatedNumberPeople] DECIMAL (18) NULL,
    [EstimatedDuration]     DECIMAL (18) NULL,
    [EstimatedCostMoneyId]  INT          NULL,
    [CreatedAt]             DATETIME     NOT NULL,
    [UpdatedAt]             DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortSkillStandardOnWorkEffortId]
    ON [dbo].[WorkEffortSkillStandard]([WorkEffortId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortSkillStandardOnSkillTypeId]
    ON [dbo].[WorkEffortSkillStandard]([SkillTypeId] ASC);

