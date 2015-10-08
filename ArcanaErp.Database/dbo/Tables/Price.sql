CREATE TABLE [dbo].[Price] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Description]    VARCHAR (255) NULL,
    [PricedItemId]   INT           NULL,
    [PricedItemType] VARCHAR (255) NULL,
    [PricingPlanId]  INT           NULL,
    [MoneyId]        INT           NULL,
    [CreatedAt]      DATETIME      NOT NULL,
    [UpdatedAt]      DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPriceOnMoneyId]
    ON [dbo].[Price]([MoneyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPriceOnPricingPlanId]
    ON [dbo].[Price]([PricingPlanId] ASC);


GO
CREATE NONCLUSTERED INDEX [PricedItemIndex]
    ON [dbo].[Price]([PricedItemId] ASC, [PricedItemType] ASC);

