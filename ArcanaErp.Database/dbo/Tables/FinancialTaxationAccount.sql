CREATE TABLE [dbo].[FinancialTaxationAccount] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [AccountNumber]        VARCHAR (255) NULL,
    [AgreementId]          INT           NULL,
    [BalanceId]            INT           NULL,
    [BalanceDate]          DATE          NULL,
    [CalculateBalance]     BIT           NULL,
    [PaymentDueId]         INT           NULL,
    [DueDate]              DATE          NULL,
    [FinancialAccountId]   INT           NULL,
    [FinancialAccountType] VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

