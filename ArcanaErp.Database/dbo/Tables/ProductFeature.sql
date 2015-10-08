CREATE TABLE [dbo].[ProductFeature] (
    [Id]                    INT      IDENTITY (1, 1) NOT NULL,
    [ProductFeatureTypeId]  INT      NULL,
    [ProductFeatureValueId] INT      NULL,
    [CreatedAt]             DATETIME NOT NULL,
    [UpdatedAt]             DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureTypeIndex]
    ON [dbo].[ProductFeature]([ProductFeatureTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureValueIndex]
    ON [dbo].[ProductFeature]([ProductFeatureValueId] ASC);

