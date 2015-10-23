CREATE TABLE [dbo].[BusinessTransactionAccountRoot] (
    [Id]                            INT           IDENTITY (1, 1) NOT NULL,
    [Description]                   VARCHAR (255) NULL,
    [Status]                        VARCHAR (255) NULL,
    [BusinessTransactionAccountId]     INT           NULL,
    [BusinessTransactionAccountType]   VARCHAR (255) NULL,
    [ExternalIdentifier]            VARCHAR (255) NULL,
    [ExternalIdSource]              VARCHAR (255) NULL,
    [Type]                          VARCHAR (255) NULL,
    [BusinessTransactionAccountTypeId] INT           NULL,
    [CreatedAt]                     DATETIME      NOT NULL,
    [UpdatedAt]                     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Btai2]
    ON [dbo].[BusinessTransactionAccountRoot]([BusinessTransactionAccountId] ASC, [BusinessTransactionAccountType] ASC);


GO
CREATE NONCLUSTERED INDEX [Btai3]
    ON [dbo].[BusinessTransactionAccountRoot]([BusinessTransactionAccountTypeId] ASC);

