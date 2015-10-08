CREATE TABLE [dbo].[InventoryDropOffTaxation] (
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
CREATE NONCLUSTERED INDEX [IndexInventoryDropOffTaxationOnFixedAssetId]
    ON [dbo].[InventoryDropOffTaxation]([FixedAssetId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryDropOffTaxationOnInventoryEntryId]
    ON [dbo].[InventoryDropOffTaxation]([InventoryEntryId] ASC);

