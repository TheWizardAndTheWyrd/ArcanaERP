﻿CREATE TABLE [dbo].[FinancialTaxationAssignment] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [FinancialTaxationId]         INT           NULL,
    [FinancialTaxationRecordId]   INT           NULL,
    [FinancialTaxationRecordType] VARCHAR (255) NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

