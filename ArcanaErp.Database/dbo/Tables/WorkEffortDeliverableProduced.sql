CREATE TABLE [dbo].[WorkEffortDeliverableProduced] (
    [Id]            INT      IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]  INT      NULL,
    [DeliverableId] INT      NULL,
    [CreatedAt]     DATETIME NOT NULL,
    [UpdatedAt]     DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortDeliverableProducedOnWorkEffortId]
    ON [dbo].[WorkEffortDeliverableProduced]([WorkEffortId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortDeliverableProducedOnDeliverableId]
    ON [dbo].[WorkEffortDeliverableProduced]([DeliverableId] ASC);

