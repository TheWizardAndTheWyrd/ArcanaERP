CREATE TABLE [dbo].[ProductFeatureTypeProductFeatureValue] (
    [Id]                    INT      IDENTITY (1, 1) NOT NULL,
    [ProductFeatureTypeId]  INT      NULL,
    [ProductFeatureValueId] INT      NULL,
    [CreatedAt]             DATETIME NOT NULL,
    [UpdatedAt]             DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureTypeFeatureValueTypeIndex]
    ON [dbo].[ProductFeatureTypeProductFeatureValue]([ProductFeatureTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureTypeFeatureValueValueIndex]
    ON [dbo].[ProductFeatureTypeProductFeatureValue]([ProductFeatureValueId] ASC);

