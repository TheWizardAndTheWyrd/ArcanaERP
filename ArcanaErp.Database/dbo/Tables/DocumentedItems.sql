CREATE TABLE [dbo].[DocumentedItems] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [DocumentedClass]         VARCHAR (255) NULL,
    [DocumentedContentId]     INT           NULL,
    [OnlineDocumentSectionId] INT           NULL,
    [CreatedAt]               DATETIME      NOT NULL,
    [UpdatedAt]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DocumentedItemsDocumentedContentIdIndex]
    ON [dbo].[DocumentedItems]([DocumentedContentId] ASC);


GO
CREATE NONCLUSTERED INDEX [DocumentedItemsOnlineDocumentSectionIdIndex]
    ON [dbo].[DocumentedItems]([OnlineDocumentSectionId] ASC);

