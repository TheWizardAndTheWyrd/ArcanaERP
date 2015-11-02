CREATE TABLE [dbo].[PaymentApplication] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [FinancialTransactionId]  INT           NULL,
    [PaymentAppliedToId]   INT           NULL,
    [PaymentAppliedToType] VARCHAR (255) NULL,
    [AppliedMoneyAmountId] INT           NULL,
    [Comments]             VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PaymentAppliedToIndex]
    ON [dbo].[PaymentApplication]([PaymentAppliedToId] ASC, [PaymentAppliedToType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPaymentApplicationOnFinancialTransactionId]
    ON [dbo].[PaymentApplication]([FinancialTransactionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPaymentApplicationOnAppliedMoneyAmountId]
    ON [dbo].[PaymentApplication]([AppliedMoneyAmountId] ASC);

