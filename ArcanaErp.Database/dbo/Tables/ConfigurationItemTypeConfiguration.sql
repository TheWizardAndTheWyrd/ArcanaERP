CREATE TABLE [dbo].[ConfigurationItemTypeConfiguration] (
    [ConfigurationItemTypeId] INT NULL,
    [ConfigurationId]         INT NULL
);


GO
CREATE NONCLUSTERED INDEX [ConfConfTypeIdItemIndex]
    ON [dbo].[ConfigurationItemTypeConfiguration]([ConfigurationItemTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfIdIndex]
    ON [dbo].[ConfigurationItemTypeConfiguration]([ConfigurationId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ConfConfigTypeuniqIndex]
    ON [dbo].[ConfigurationItemTypeConfiguration]([ConfigurationItemTypeId] ASC, [ConfigurationId] ASC);

