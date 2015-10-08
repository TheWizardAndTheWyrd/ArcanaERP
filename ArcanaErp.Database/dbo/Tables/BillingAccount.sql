CREATE TABLE [dbo].[BillingAccount] (
    [Id]                             INT      IDENTITY (1, 1) NOT NULL,
    [SEndPaperBills]                 BIT      DEFAULT ('f') NULL,
    [PayableOnline]                  BIT      DEFAULT ('f') NULL,
    [BillingDate]                    DATE     NULL,
    [CalculateBalanceStrategyTypeId] INT      NULL,
    [CreatedAt]                      DATETIME NOT NULL,
    [UpdatedAt]                      DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

