CREATE TABLE [dbo].[BusinessTaxationAccountRoot] (
    [Id]                            INT           IDENTITY (1, 1) NOT NULL,
    [Description]                   VARCHAR (255) NULL,
    [Status]                        INT           NULL,
    [BusinessTaxationAccountId]     INT           NULL,
    [BusinessTaxationAccountType]   VARCHAR (255) NULL,
    [ExternalIdentifier]            VARCHAR (255) NULL,
    [ExternalIdSource]              VARCHAR (255) NULL,
    [Type]                          VARCHAR (255) NULL,
    [BusinessTaxationAccountTypeId] INT           NULL,
    [CreatedAt]                     DATETIME      NOT NULL,
    [UpdatedAt]                     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Btai2]
    ON [dbo].[BusinessTaxationAccountRoot]([BusinessTaxationAccountId] ASC, [BusinessTaxationAccountType] ASC);


GO
CREATE NONCLUSTERED INDEX [Btai3]
    ON [dbo].[BusinessTaxationAccountRoot]([BusinessTaxationAccountTypeId] ASC);

