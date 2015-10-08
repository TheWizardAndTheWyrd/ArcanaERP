CREATE TABLE [dbo].[InventoryEntry] (
    [Id]                       INT           IDENTITY (1, 1) NOT NULL,
    [Description]              VARCHAR (255) NULL,
    [InventoryEntryRecordId]   INT           NULL,
    [InventoryEntryRecordType] VARCHAR (255) NULL,
    [ExternalIdentifier]       VARCHAR (255) NULL,
    [ExternalIdSource]         VARCHAR (255) NULL,
    [ProductTypeId]            INT           NULL,
    [NumberAvailable]          INT           NULL,
    [sku]                      VARCHAR (255) NULL,
    [NumberSold]               INT           NULL,
    [UnitOfMeasurementId]      INT           NULL,
    [NumberInStock]            INT           NULL,
    [CreatedAt]                DATETIME      NOT NULL,
    [UpdatedAt]                DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [InventoryEntryUnitOfMeasurementIndex]
    ON [dbo].[InventoryEntry]([UnitOfMeasurementId] ASC);


GO
CREATE NONCLUSTERED INDEX [Bii1]
    ON [dbo].[InventoryEntry]([InventoryEntryRecordId] ASC, [InventoryEntryRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryEntryOnProductTypeId]
    ON [dbo].[InventoryEntry]([ProductTypeId] ASC);

