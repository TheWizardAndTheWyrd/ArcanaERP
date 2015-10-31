CREATE TABLE [dbo].[InventoryPickupTransaction] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [FixedAssetId]        INT           NULL,
    [Description]         VARCHAR (255) NULL,
    [Quantity]            INT           NULL,
    [UnitOfMeasurementId] INT           NULL,
    [Comments]            TEXT          NULL,
    [InventoryEntryId]    INT           NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryPickupTransactionOnFixedAssetId]
    ON [dbo].[InventoryPickupTransaction]([FixedAssetId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryPickupTransactionOnInventoryEntryId]
    ON [dbo].[InventoryPickupTransaction]([InventoryEntryId] ASC);

