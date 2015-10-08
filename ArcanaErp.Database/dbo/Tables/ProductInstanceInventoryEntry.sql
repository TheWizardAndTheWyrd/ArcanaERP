CREATE TABLE [dbo].[ProductInstanceInventoryEntry] (
    [Id]                INT      IDENTITY (1, 1) NOT NULL,
    [ProductInstanceId] INT      NULL,
    [InventoryEntryId]  INT      NULL,
    [CreatedAt]         DATETIME NOT NULL,
    [UpdatedAt]         DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexProductInstanceInventoryEntryOnProductInstanceId]
    ON [dbo].[ProductInstanceInventoryEntry]([ProductInstanceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexProductInstanceInventoryEntryOnInventoryEntryId]
    ON [dbo].[ProductInstanceInventoryEntry]([InventoryEntryId] ASC);

