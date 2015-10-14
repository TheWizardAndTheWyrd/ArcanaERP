CREATE TABLE [dbo].[BusinessTransactionEventDescription] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTransactionEventId] INT           NULL,
    [LanguageId]              INT           NULL,
    [LocaleId]                INT           NULL,
    [Priority]                INT           NULL,
    [Sequence]                INT           NULL,
    [ShortDescription]        VARCHAR (255) NULL,
    [LongDescription]         VARCHAR (255) NULL,
    [CreatedAt]               DATETIME      NOT NULL,
    [UpdatedAt]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionEventDescriptionOnBusinessTransactionEventId]
    ON [dbo].[BusinessTransactionEventDescription]([BusinessTransactionEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionEventDescriptionOnLanguageId]
    ON [dbo].[BusinessTransactionEventDescription]([LanguageId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionEventDescriptionOnLocaleId]
    ON [dbo].[BusinessTransactionEventDescription]([LocaleId] ASC);

