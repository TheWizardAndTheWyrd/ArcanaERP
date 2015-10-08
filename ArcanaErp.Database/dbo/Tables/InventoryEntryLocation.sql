CREATE TABLE [dbo].[InventoryEntryLocation] (
    [Id]               INT      IDENTITY (1, 1) NOT NULL,
    [InventoryEntryId] INT      NULL,
    [FacilityId]       INT      NULL,
    [ValidFrom]        DATETIME NULL,
    [ValidThrough]     DATETIME NULL,
    [CreatedAt]        DATETIME NOT NULL,
    [UpdatedAt]        DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [InventoryEntryLocationInventoryEntryIndex]
    ON [dbo].[InventoryEntryLocation]([InventoryEntryId] ASC);


GO
CREATE NONCLUSTERED INDEX [InventoryEntryLocationFacilityIndex]
    ON [dbo].[InventoryEntryLocation]([FacilityId] ASC);

