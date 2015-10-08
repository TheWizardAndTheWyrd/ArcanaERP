CREATE TABLE [dbo].[ConfigurationItemTypeConfigurationOption] (
    [Id]                      INT      IDENTITY (1, 1) NOT NULL,
    [ConfigurationItemTypeId] INT      NULL,
    [ConfigurationoptiOnId]   INT      NULL,
    [isdefault]               BIT      DEFAULT ('f') NULL,
    [CreatedAt]               DATETIME NOT NULL,
    [UpdatedAt]               DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ConfItemTypeConfoptIdItemIndex]
    ON [dbo].[ConfigurationItemTypeConfigurationOption]([ConfigurationItemTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfItemTypeConfoptIdoptIndex]
    ON [dbo].[ConfigurationItemTypeConfigurationOption]([ConfigurationoptiOnId] ASC);

