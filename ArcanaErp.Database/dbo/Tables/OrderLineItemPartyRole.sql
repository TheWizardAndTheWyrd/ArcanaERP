CREATE TABLE [dbo].[OrderLineItemPartyRole] (
    [Id]                            INT           IDENTITY (1, 1) NOT NULL,
    [RoleTypeId]                    INT           NULL,
    [BusinessTaxationAccountRootId] INT           NULL,
    [OrderLineItemId]               INT           NULL,
    [PartyId]                       INT           NULL,
    [Description]                   VARCHAR (255) NULL,
    [CreatedAt]                     DATETIME      NOT NULL,
    [UpdatedAt]                     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [OrderLineItemPartyRoleOrderLineItemIndex]
    ON [dbo].[OrderLineItemPartyRole]([OrderLineItemId] ASC);


GO
CREATE NONCLUSTERED INDEX [OrderLineItemPartyRolePartyIndex]
    ON [dbo].[OrderLineItemPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [OrderLineItemPartyRoleRoleTypeIndex]
    ON [dbo].[OrderLineItemPartyRole]([RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [OrderLineItemPartyRoleBusinessTaxationAccountRootIndex]
    ON [dbo].[OrderLineItemPartyRole]([BusinessTaxationAccountRootId] ASC);

