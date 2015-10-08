CREATE TABLE [dbo].[BusinessTaxationEventDescription] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTaxationEventId] INT           NULL,
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
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationEventDescriptionOnBusinessTaxationEventId]
    ON [dbo].[BusinessTaxationEventDescription]([BusinessTaxationEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationEventDescriptionOnLanguageId]
    ON [dbo].[BusinessTaxationEventDescription]([LanguageId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationEventDescriptionOnLocaleId]
    ON [dbo].[BusinessTaxationEventDescription]([LocaleId] ASC);

