CREATE TABLE [dbo].[PartyFixedAssetAssignment] (
    [Id]                   INT      IDENTITY (1, 1) NOT NULL,
    [PartyId]              INT      NULL,
    [FixedAssetId]         INT      NULL,
    [AssignedFrom]         DATETIME NULL,
    [Assignedthru]         DATETIME NULL,
    [AllocatedCostMoneyId] INT      NULL,
    [CreatedAt]            DATETIME NOT NULL,
    [UpdatedAt]            DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PartyFixedAssetAssignIndex]
    ON [dbo].[PartyFixedAssetAssignment]([PartyId] ASC, [FixedAssetId] ASC);

