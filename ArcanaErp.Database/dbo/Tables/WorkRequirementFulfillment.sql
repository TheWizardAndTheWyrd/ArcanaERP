CREATE TABLE [dbo].[WorkRequirementFulfillment] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [Description]   VARCHAR (255) NULL,
    [WorkEffortId]  INT           NULL,
    [RequirementId] INT           NULL,
    [CreatedAt]     DATETIME      NOT NULL,
    [UpdatedAt]     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [WorkOrderRequirementFulfillmentIndex]
    ON [dbo].[WorkRequirementFulfillment]([WorkEffortId] ASC, [RequirementId] ASC);

