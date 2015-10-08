CREATE TABLE [dbo].[Preference] (
    [Id]                 INT      IDENTITY (1, 1) NOT NULL,
    [PreferenceoptiOnId] INT      NULL,
    [PreferenceTypeId]   INT      NULL,
    [CreatedAt]          DATETIME NOT NULL,
    [UpdatedAt]          DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPreferenceOnPreferenceoptiOnId]
    ON [dbo].[Preference]([PreferenceoptiOnId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPreferenceOnPreferenceTypeId]
    ON [dbo].[Preference]([PreferenceTypeId] ASC);

