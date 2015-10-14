CREATE TABLE [dbo].[BaseTransactionContext] (
    [Id]                        INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTransactionEventId]   INT           NULL,
    [TransactionContextRecordId]   INT           NULL,
    [TransactionContextRecordType] VARCHAR (255) NULL,
    [CreatedAt]                 DATETIME      NOT NULL,
    [UpdatedAt]                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [TransactionContextRecordIndex]
    ON [dbo].[BaseTransactionContext]([TransactionContextRecordId] ASC, [TransactionContextRecordType] ASC);

