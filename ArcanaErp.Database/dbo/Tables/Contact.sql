CREATE TABLE [dbo].[Contact] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [ContactMechanismId]   INT           NULL,
    [ContactMechanismType] VARCHAR (255) NULL,
    [IsPrimary]            BIT           NULL,
    [ExternalIdentifier]   VARCHAR (255) NULL,
    [ExternalIdsource]     VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    [ContactRecordType]    VARCHAR (255) NULL,
    [ContactRecordId]      INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexContactOnIsPrimary]
    ON [dbo].[Contact]([IsPrimary] ASC);


GO
CREATE NONCLUSTERED INDEX [Besi2]
    ON [dbo].[Contact]([ContactMechanismId] ASC, [ContactMechanismType] ASC);


GO
CREATE NONCLUSTERED INDEX [ContactContactRecordIndex]
    ON [dbo].[Contact]([ContactRecordType] ASC, [ContactRecordId] ASC);

