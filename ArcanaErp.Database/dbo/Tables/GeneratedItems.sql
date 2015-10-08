CREATE TABLE [dbo].[GeneratedItems] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [GeneratedById]       INT           NULL,
    [GeneratedByType]     VARCHAR (255) NULL,
    [GeneratedRecordId]   INT           NULL,
    [GeneratedRecordType] VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [GeneratedByIndex]
    ON [dbo].[GeneratedItems]([GeneratedByType] ASC, [GeneratedById] ASC);


GO
CREATE NONCLUSTERED INDEX [GeneratedRecordIndex]
    ON [dbo].[GeneratedItems]([GeneratedRecordType] ASC, [GeneratedRecordId] ASC);

