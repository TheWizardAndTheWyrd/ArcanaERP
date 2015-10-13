CREATE TABLE [dbo].[ConfigurationItem] (
    [Id]                      INT      IDENTITY (1, 1) NOT NULL,
    [ConfigurationId]         INT      NULL,
    [ConfigurationItemTypeId] INT      NULL,
    [ConfigurationOptionId]   INT      NULL,
    [CreatedAt]               DATETIME NOT NULL,
    [UpdatedAt]               DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationItemsOnConfigurationId]
    ON [dbo].[ConfigurationItem]([ConfigurationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationItemsOnConfigurationItemTypeId]
    ON [dbo].[ConfigurationItem]([ConfigurationItemTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationItemsOnConfigurationoptiOnId]
    ON [dbo].[ConfigurationItem]([ConfigurationOptionId] ASC);

