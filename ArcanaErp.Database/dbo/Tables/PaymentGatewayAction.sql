CREATE TABLE [dbo].[PaymentGatewayAction] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Description]        VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPaymentGatewayActionOnInternalIdentifier]
    ON [dbo].[PaymentGatewayAction]([InternalIdentifier] ASC);

