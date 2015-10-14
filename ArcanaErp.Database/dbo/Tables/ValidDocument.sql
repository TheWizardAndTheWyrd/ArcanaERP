CREATE TABLE [dbo].[ValidDocument] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [DocumentId]          INT           NULL,
    [DocumentedModelId]   INT           NULL,
    [DocumentedModelType] VARCHAR (255) NULL,
	[CreatedAt]			  DATETIME		NOT NULL,
	[UpdatedAt]			  DATETIME		NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexValidDocumentsOnDocumentId]
    ON [dbo].[ValidDocument]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ValidDocumentsModelIndex]
    ON [dbo].[ValidDocument]([DocumentedModelId] ASC, [DocumentedModelType] ASC);

