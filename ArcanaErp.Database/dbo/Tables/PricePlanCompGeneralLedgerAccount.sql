CREATE TABLE [dbo].[PricePlanCompGeneralLedgerAccount] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [PricingPlanComponentId] INT           NULL,
    [GeneralLedgerAccountId] INT           NULL,
    [mappingRuleklass]       VARCHAR (255) NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

