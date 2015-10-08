CREATE TABLE [dbo].[ConfigurationItemsConfigurationOption] (
    [ConfigurationItemId]   INT NULL,
    [ConfigurationoptiOnId] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [ConfItemConfoptIdItemIndex]
    ON [dbo].[ConfigurationItemsConfigurationOption]([ConfigurationItemId] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfItemConfoptIdoptIndex]
    ON [dbo].[ConfigurationItemsConfigurationOption]([ConfigurationoptiOnId] ASC);

