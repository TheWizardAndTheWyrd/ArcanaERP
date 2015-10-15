CREATE TABLE [dbo].[WorkEffortPartyAssignment] (
    [Id]                 INT      IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]       INT      NULL,
    [RoleTypeId]         INT      NULL,
    [PartyId]            INT      NULL,
    [AssignedFrom]       DATETIME NULL,
    [AssignedThrough]    DATETIME NULL,
    [Comments]           TEXT     NULL,
    [CreatedAt]          DATETIME NOT NULL,
    [UpdatedAt]          DATETIME NOT NULL,
    [ResourceAllocation] INT      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortPartyAssignmentOnassignedFrom]
    ON [dbo].[WorkEffortPartyAssignment]([assignedFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortPartyAssignmentOnassignedThrough]
    ON [dbo].[WorkEffortPartyAssignment]([assignedThrough] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortPartyAssignmentOnWorkEffortId]
    ON [dbo].[WorkEffortPartyAssignment]([WorkEffortId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortPartyAssignmentOnPartyId]
    ON [dbo].[WorkEffortPartyAssignment]([PartyId] ASC);

