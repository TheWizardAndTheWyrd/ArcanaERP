CREATE TABLE [dbo].[Documents] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Description]        VARCHAR (255) NULL,
    [DocumentDate]       DATETIME      NULL,
    [DocumentRecordId]   INT           NULL,
    [DocumentRecordType] VARCHAR (255) NULL,
    [DocumentTypeId]     INT           NULL,
    [cusTomfields]       TEXT          NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DocumentRecordpolyIndex]
    ON [dbo].[Documents]([DocumentRecordType] ASC, [DocumentRecordId] ASC);


GO
CREATE NONCLUSTERED INDEX [DocumentTypeIndex]
    ON [dbo].[Documents]([DocumentTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [DocumentsInternalIdentifierIndex]
    ON [dbo].[Documents]([InternalIdentifier] ASC);

