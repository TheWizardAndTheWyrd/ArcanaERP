CREATE TABLE [dbo].[OrderLineItemRelationship] (
    [Id]                              INT           IDENTITY (1, 1) NOT NULL,
    [OrderLineItemRelationshipTypeId] INT           NULL,
    [Description]                     VARCHAR (255) NULL,
    [OrderLineItemIdFrom]             INT           NULL,
    [OrderLineItemIdTo]               INT           NULL,
    [StatusTypeId]                    INT           NULL,
    [FromDate]                        DATE          NULL,
    [ThroughDate]                     DATE          NULL,
    [CreatedAt]                       DATETIME      NOT NULL,
    [UpdatedAt]                       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [OrderLineItemRelationshipOnOrderLineItemRelationshipTypeId]
    ON [dbo].[OrderLineItemRelationship]([OrderLineItemRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexOrderLineItemRelationshipOnStatusTypeId]
    ON [dbo].[OrderLineItemRelationship]([StatusTypeId] ASC);

