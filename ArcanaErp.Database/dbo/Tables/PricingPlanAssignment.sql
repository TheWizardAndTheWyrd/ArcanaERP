CREATE TABLE [dbo].[PricingPlanAssignment] (
    [Id]                INT           IDENTITY (1, 1) NOT NULL,
    [PricingPlanId]     INT           NULL,
    [PriceableItemId]   INT           NULL,
    [PriceableItemType] VARCHAR (255) NULL,
    [Priority]          INT           NULL,
    [CreatedAt]         DATETIME      NOT NULL,
    [UpdatedAt]         DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPricingPlanAssignmentOnPricingPlanId]
    ON [dbo].[PricingPlanAssignment]([PricingPlanId] ASC);


GO
CREATE NONCLUSTERED INDEX [PriceableItemIndex]
    ON [dbo].[PricingPlanAssignment]([PriceableItemId] ASC, [PriceableItemType] ASC);

