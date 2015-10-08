CREATE TABLE [dbo].[ProductFeatureInterAction] (
    [Id]                              INT      IDENTITY (1, 1) NOT NULL,
    [ProductFeatureFromId]            INT      NULL,
    [ProductFeatureToId]              INT      NULL,
    [ProductFeatureInteractionTypeId] INT      NULL,
    [CreatedAt]                       DATETIME NOT NULL,
    [UpdatedAt]                       DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureintFeatureIndex]
    ON [dbo].[ProductFeatureInterAction]([ProductFeatureFromId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureintinteractedFeatureIndex]
    ON [dbo].[ProductFeatureInterAction]([ProductFeatureToId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureintinteractedFeatureTypeIndex]
    ON [dbo].[ProductFeatureInterAction]([ProductFeatureInteractionTypeId] ASC);

