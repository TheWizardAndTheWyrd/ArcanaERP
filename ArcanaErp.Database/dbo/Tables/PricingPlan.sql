CREATE TABLE [dbo].[PricingPlan] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255)  NULL,
    [Comments]           VARCHAR (255)  NULL,
    [InternalIdentifier] VARCHAR (255)  NULL,
    [ExternalIdentifier] VARCHAR (255)  NULL,
    [ExternalIdSource]   VARCHAR (255)  NULL,
    [FromDate]           DATE           NULL,
    [ThroughDate]        DATE           NULL,
    [matchingrules]      VARCHAR (255)  NULL,
    [Pricingcalculation] VARCHAR (255)  NULL,
    [IssimpleAmount]     BIT            NULL,
    [currencyId]         INT            NULL,
    [MoneyAmount]        DECIMAL (8, 2) NULL,
    [CreatedAt]          DATETIME       NOT NULL,
    [UpdatedAt]          DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

