CREATE TABLE [dbo].[WorkOrderItemFulfillment] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]    INT           NULL,
    [OrderLineItemId] INT           NULL,
    [Description]     VARCHAR (255) NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [WorkOrderItemFulfillmentIndex]
    ON [dbo].[WorkOrderItemFulfillment]([WorkEffortId] ASC, [OrderLineItemId] ASC);

