CREATE TABLE [dbo].[BusinessAccountTaxationTask] (
    [Id]                        INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTaxationTaskId]    INT           NULL,
    [BusinessTaxationAccountId] INT           NULL,
    [Description]               VARCHAR (255) NULL,
    [Comments]                  VARCHAR (255) NULL,
    [EnteredDate]               DATETIME      NULL,
    [requestedDate]             DATETIME      NULL,
    [CreatedAt]                 DATETIME      NOT NULL,
    [UpdatedAt]                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessAccountTaxationTaskOnBusinessTaxationTaskId]
    ON [dbo].[BusinessAccountTaxationTask]([BusinessTaxationTaskId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessAccountTaxationTaskOnBusinessTaxationAccountId]
    ON [dbo].[BusinessAccountTaxationTask]([BusinessTaxationAccountId] ASC);

