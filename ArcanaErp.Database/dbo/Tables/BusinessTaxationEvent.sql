CREATE TABLE [dbo].[BusinessTaxationEvent] (
    [Id]                            INT           IDENTITY (1, 1) NOT NULL,
    [Description]                   VARCHAR (255) NULL,
    [BusinessTaxationAccountRootId] INT           NULL,
    [BusinessTaxationTypeId]        INT           NULL,
    [EnteredDate]                   DATETIME      NULL,
    [PostDate]                      DATETIME      NULL,
    [BusinessTaxationRecordId]      INT           NULL,
    [BusinessTaxationRecordType]    VARCHAR (255) NULL,
    [ExternalIdentifier]            VARCHAR (255) NULL,
    [ExternalIdSource]              VARCHAR (255) NULL,
    [CreatedAt]                     DATETIME      NOT NULL,
    [UpdatedAt]                     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationEventOnBusinessTaxationAccountRootId]
    ON [dbo].[BusinessTaxationEvent]([BusinessTaxationAccountRootId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationEventOnBusinessTaxationTypeId]
    ON [dbo].[BusinessTaxationEvent]([BusinessTaxationTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [Btai1]
    ON [dbo].[BusinessTaxationEvent]([BusinessTaxationRecordId] ASC, [BusinessTaxationRecordType] ASC);

