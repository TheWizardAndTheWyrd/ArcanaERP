CREATE TABLE [dbo].[OrderRequirementCommitment] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [OrderLineItemId] INT           NULL,
    [RequirementId]   INT           NULL,
    [Description]     VARCHAR (255) NULL,
    [Quantity]        INT           NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [OrderItemRequirementFulfillmentIndex]
    ON [dbo].[OrderRequirementCommitment]([OrderLineItemId] ASC, [RequirementId] ASC);

