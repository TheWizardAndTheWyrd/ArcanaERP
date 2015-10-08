CREATE TABLE [dbo].[PaymentApplication] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [FinancialTaxationId]  INT           NULL,
    [PaymentAppliedToId]   INT           NULL,
    [PaymentAppliedToType] VARCHAR (255) NULL,
    [AppliedMoneyAmountId] INT           NULL,
    [Comment]              VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PaymentAppliedToIndex]
    ON [dbo].[PaymentApplication]([PaymentAppliedToId] ASC, [PaymentAppliedToType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPaymentApplicationOnFinancialTaxationId]
    ON [dbo].[PaymentApplication]([FinancialTaxationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPaymentApplicationOnAppliedMoneyAmountId]
    ON [dbo].[PaymentApplication]([AppliedMoneyAmountId] ASC);

