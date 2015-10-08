CREATE TABLE [dbo].[ValidConfiguration] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ConfiguredItemId]   INT           NULL,
    [ConfiguredItemType] VARCHAR (255) NULL,
    [ConfigurationId]    INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ConfiguredItempolyIndex]
    ON [dbo].[ValidConfiguration]([ConfiguredItemId] ASC, [ConfiguredItemType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexValidConfigurationOnConfigurationId]
    ON [dbo].[ValidConfiguration]([ConfigurationId] ASC);

