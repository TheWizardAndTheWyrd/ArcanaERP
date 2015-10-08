CREATE TABLE [dbo].[PriceComponent] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [Description]            VARCHAR (255) NULL,
    [PricingPlanComponentId] INT           NULL,
    [PriceId]                INT           NULL,
    [MoneyId]                INT           NULL,
    [PricedComponentId]      INT           NULL,
    [PricedComponentType]    VARCHAR (255) NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPriceComponentOnMoneyId]
    ON [dbo].[PriceComponent]([MoneyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPriceComponentOnPricingPlanComponentId]
    ON [dbo].[PriceComponent]([PricingPlanComponentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPriceComponentOnPriceId]
    ON [dbo].[PriceComponent]([PriceId] ASC);


GO
CREATE NONCLUSTERED INDEX [PricedComponentIndex]
    ON [dbo].[PriceComponent]([PricedComponentId] ASC, [PricedComponentType] ASC);

