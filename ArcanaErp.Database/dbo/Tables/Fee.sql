CREATE TABLE [dbo].[Fee] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [FeeRecordId]        INT           NULL,
    [FeeRecordType]      VARCHAR (255) NULL,
    [MoneyId]            INT           NULL,
    [FeeTypeId]          INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [FromDate]           DATETIME      NULL,
    [ThroughDate]        DATETIME      NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FeeRecordIndex]
    ON [dbo].[Fee]([FeeRecordId] ASC, [FeeRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexFeeOnFeeTypeId]
    ON [dbo].[Fee]([FeeTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexFeeOnMoneyId]
    ON [dbo].[Fee]([MoneyId] ASC);

