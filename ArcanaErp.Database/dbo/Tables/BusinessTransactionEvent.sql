CREATE TABLE [dbo].[BusinessTransactionEvent] (
    [Id]                            INT           IDENTITY (1, 1) NOT NULL,
    [Description]                   VARCHAR (255) NULL,
    [BusinessTransactionAccountRootId] INT           NULL,
    [BusinessTransactionTypeId]        INT           NULL,
    [EnteredDate]                   DATETIME      NULL,
    [PostDate]                      DATETIME      NULL,
    [BusinessTransactionRecordId]      INT           NULL,
    [BusinessTransactionRecordType]    VARCHAR (255) NULL,
    [ExternalIdentifier]            VARCHAR (255) NULL,
    [ExternalIdSource]              VARCHAR (255) NULL,
    [CreatedAt]                     DATETIME      NOT NULL,
    [UpdatedAt]                     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionEventOnBusinessTransactionAccountRootId]
    ON [dbo].[BusinessTransactionEvent]([BusinessTransactionAccountRootId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionEventOnBusinessTransactionTypeId]
    ON [dbo].[BusinessTransactionEvent]([BusinessTransactionTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [Btai1]
    ON [dbo].[BusinessTransactionEvent]([BusinessTransactionRecordId] ASC, [BusinessTransactionRecordType] ASC);

