CREATE TABLE [dbo].[Payment] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [Success]             BIT           NULL,
    [ReferenceNumber]     VARCHAR (255) NULL,
    [FinancialTransactionId] INT           NULL,
    [CurrentState]        VARCHAR (255) NULL,
    [AuthorizationCode]   VARCHAR (255) NULL,
    [ExternalIdentifier]  VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPaymentOnFinancialTransactionId]
    ON [dbo].[Payment]([FinancialTransactionId] ASC);

