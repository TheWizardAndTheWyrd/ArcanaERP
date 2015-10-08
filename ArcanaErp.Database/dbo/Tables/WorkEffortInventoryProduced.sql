CREATE TABLE [dbo].[WorkEffortInventoryProduced] (
    [Id]               INT      IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]     INT      NULL,
    [InventoryEntryId] INT      NULL,
    [CreatedAt]        DATETIME NOT NULL,
    [UpdatedAt]        DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortInventoryProducedOnWorkEffortId]
    ON [dbo].[WorkEffortInventoryProduced]([WorkEffortId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortInventoryProducedOnInventoryEntryId]
    ON [dbo].[WorkEffortInventoryProduced]([InventoryEntryId] ASC);

