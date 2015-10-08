CREATE TABLE [dbo].[PaymentGateways] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [Params]                 VARCHAR (255) NULL,
    [PaymentGatewayActionId] INT           NULL,
    [PaymentId]              INT           NULL,
    [response]               VARCHAR (255) NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

