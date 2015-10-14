CREATE TABLE [dbo].[PaymentGateway] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [Parameters]             VARCHAR (255) NULL,
    [PaymentGatewayActionId] INT           NULL,
    [PaymentId]              INT           NULL,
    [Response]               VARCHAR (255) NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

