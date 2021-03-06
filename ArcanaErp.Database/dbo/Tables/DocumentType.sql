﻿CREATE TABLE [dbo].[DocumentType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
	[ExternalIdSource]   VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Description]        VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DocumentTypeInternalIdentifierIndex]
    ON [dbo].[DocumentType]([InternalIdentifier] ASC);

