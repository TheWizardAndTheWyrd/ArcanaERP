CREATE TABLE [dbo].[InventoryPickupTaxation] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [FixedAssetId]        INT           NULL,
    [Description]         VARCHAR (255) NULL,
    [Quantity]            INT           NULL,
    [UnitOfMeasurementId] INT           NULL,
    [Comment]             TEXT          NULL,
    [InventoryEntryId]    INT           NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryPickupTaxationOnFixedAssetId]
    ON [dbo].[InventoryPickupTaxation]([FixedAssetId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryPickupTaxationOnInventoryEntryId]
    ON [dbo].[InventoryPickupTaxation]([InventoryEntryId] ASC);

