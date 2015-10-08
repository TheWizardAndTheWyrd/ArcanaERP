CREATE TABLE [dbo].[ValidPricePlanComponent] (
    [Id]                     INT      IDENTITY (1, 1) NOT NULL,
    [PricingPlanId]          INT      NULL,
    [PricingPlanComponentId] INT      NULL,
    [CreatedAt]              DATETIME NOT NULL,
    [UpdatedAt]              DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexValidPricePlanComponentOnPricingPlanId]
    ON [dbo].[ValidPricePlanComponent]([PricingPlanId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexValidPricePlanComponentOnPricingPlanComponentId]
    ON [dbo].[ValidPricePlanComponent]([PricingPlanComponentId] ASC);

