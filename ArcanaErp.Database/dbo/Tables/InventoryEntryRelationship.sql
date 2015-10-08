CREATE TABLE [dbo].[InventoryEntryRelationship] (
    [Id]                               INT           IDENTITY (1, 1) NOT NULL,
    [InventoryEntryRelationshipTypeId] INT           NULL,
    [Description]                      VARCHAR (255) NULL,
    [InventoryEntryIdFrom]             INT           NULL,
    [InventoryEntryIdTo]               INT           NULL,
    [RoleTypeIdFrom]                   INT           NULL,
    [RoleTypeIdTo]                     INT           NULL,
    [StatusTypeId]                     INT           NULL,
    [FromDate]                         DATE          NULL,
    [ThroughDate]                      DATE          NULL,
    [CreatedAt]                        DATETIME      NOT NULL,
    [UpdatedAt]                        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryEntryRelationshipOnInventoryEntryRelationshipTypeId]
    ON [dbo].[InventoryEntryRelationship]([InventoryEntryRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexInventoryEntryRelationshipOnStatusTypeId]
    ON [dbo].[InventoryEntryRelationship]([StatusTypeId] ASC);

