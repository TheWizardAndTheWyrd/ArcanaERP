CREATE TABLE [dbo].[RecurringPayment] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [PaymentAccountId]   INT            NULL,
    [PaymentAccountType] VARCHAR (255)  NULL,
    [BillingAccountId]   INT            NULL,
    [PayUpToAmount]      DECIMAL (8, 2) NULL,
    [PaymentAmount]      DECIMAL (8, 2) NULL,
    [PaymentDay]         INT            NULL,
    [FromDate]           DATE           NULL,
    [ThroughDate]        DATE           NULL,
    [Enabled]            BIT            NULL,
    [TextToPay]          BIT            NULL,
    [CreatedAt]          DATETIME       NOT NULL,
    [UpdatedAt]          DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PaymentAccountIndex]
    ON [dbo].[RecurringPayment]([PaymentAccountId] ASC, [PaymentAccountType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexRecurringPaymentOnBillingAccountId]
    ON [dbo].[RecurringPayment]([BillingAccountId] ASC);

