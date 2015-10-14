CREATE TABLE [dbo].[BusinessAccountTransactionTask] (
    [Id]                        INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTransactionTaskId]    INT           NULL,
    [BusinessTransactionAccountId] INT           NULL,
    [Description]               VARCHAR (255) NULL,
    [Comments]                  VARCHAR (255) NULL,
    [EnteredDate]               DATETIME      NULL,
    [RequestedDate]             DATETIME      NULL,
    [CreatedAt]                 DATETIME      NOT NULL,
    [UpdatedAt]                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessAccountTransactionTaskOnBusinessTransactionTaskId]
    ON [dbo].[BusinessAccountTransactionTask]([BusinessTransactionTaskId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessAccountTransactionTaskOnBusinessTransactionAccountId]
    ON [dbo].[BusinessAccountTransactionTask]([BusinessTransactionAccountId] ASC);

