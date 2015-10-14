CREATE TABLE [dbo].[FinancialTransactionAssignment] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [FinancialTransactionId]         INT           NULL,
    [FinancialTransactionRecordId]   INT           NULL,
    [FinancialTransactionRecordType] VARCHAR (255) NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

