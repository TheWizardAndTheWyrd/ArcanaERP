CREATE TABLE [dbo].[WorkEffortInventoryAssignment] (
    [Id]               INT      IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]     INT      NULL,
    [InventoryEntryId] INT      NULL,
    [CreatedAt]        DATETIME NOT NULL,
    [UpdatedAt]        DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [WorkEffortInventoryAssignmentIndex]
    ON [dbo].[WorkEffortInventoryAssignment]([WorkEffortId] ASC, [InventoryEntryId] ASC);

