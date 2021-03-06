﻿CREATE TABLE [dbo].[AcceptedCreditCard] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationId] INT           NOT NULL,
    [CardType]       VARCHAR (255) NULL,
    [CreatedAt]      DATETIME      NOT NULL,
    [UpdatedAt]      DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

