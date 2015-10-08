CREATE TABLE [dbo].[ValidDocuments] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [DocumentId]          INT           NULL,
    [DocumentedModelId]   INT           NULL,
    [DocumentedModelType] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexValidDocumentsOnDocumentId]
    ON [dbo].[ValidDocuments]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ValidDocumentsModelIndex]
    ON [dbo].[ValidDocuments]([DocumentedModelId] ASC, [DocumentedModelType] ASC);

