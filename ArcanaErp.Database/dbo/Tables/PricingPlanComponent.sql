CREATE TABLE [dbo].[PricingPlanComponent] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [PriceComponentTypeId] INT            NULL,
    [Description]          VARCHAR (255)  NULL,
    [Comments]             VARCHAR (255)  NULL,
    [InternalIdentifier]   VARCHAR (255)  NULL,
    [ExternalIdentifier]   VARCHAR (255)  NULL,
    [ExternalIdSource]     VARCHAR (255)  NULL,
    [MatchingRules]        VARCHAR (255)  NULL,
    [PricingCalculation]   VARCHAR (255)  NULL,
    [IssimpleAmount]       BIT            NULL,
    [CurrencyId]           INT            NULL,
    [MoneyAmount]          DECIMAL (8, 2) NULL,
    [CreatedAt]            DATETIME       NOT NULL,
    [UpdatedAt]            DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPricingPlanComponentOnPriceComponentTypeId]
    ON [dbo].[PricingPlanComponent]([PriceComponentTypeId] ASC);

