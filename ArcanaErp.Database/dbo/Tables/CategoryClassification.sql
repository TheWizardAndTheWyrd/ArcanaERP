CREATE TABLE [dbo].[CategoryClassification] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [CategoryId]         INT           NULL,
    [ClassificationType] VARCHAR (255) NULL,
    [ClassificationId]   INT           NULL,
    [FromDate]           DATETIME      NULL,
    [ThroughDate]        DATETIME      NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ClassificationPolymorphic]
    ON [dbo].[CategoryClassification]([ClassificationId] ASC, [ClassificationType] ASC);


GO
CREATE NONCLUSTERED INDEX [CategoryClassificationCategoryIdIndex]
    ON [dbo].[CategoryClassification]([CategoryId] ASC);

