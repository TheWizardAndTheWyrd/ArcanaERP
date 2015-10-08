CREATE TABLE [dbo].[ConfigurationItems] (
    [Id]                      INT      IDENTITY (1, 1) NOT NULL,
    [ConfigurationId]         INT      NULL,
    [ConfigurationItemTypeId] INT      NULL,
    [ConfigurationoptiOnId]   INT      NULL,
    [CreatedAt]               DATETIME NOT NULL,
    [UpdatedAt]               DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationItemsOnConfigurationId]
    ON [dbo].[ConfigurationItems]([ConfigurationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationItemsOnConfigurationItemTypeId]
    ON [dbo].[ConfigurationItems]([ConfigurationItemTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationItemsOnConfigurationoptiOnId]
    ON [dbo].[ConfigurationItems]([ConfigurationoptiOnId] ASC);

