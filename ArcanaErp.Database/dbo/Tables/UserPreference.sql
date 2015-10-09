CREATE TABLE [dbo].[UserPreference] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [UserId]               INT           NULL,
    [PreferenceId]          INT           NULL,
    [PreferencedRecordId]   INT           NULL,
    [PreferencedRecordType] VARCHAR (255) NULL,
    [CreatedAt]             DATETIME      NOT NULL,
    [UpdatedAt]             DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnUsersId]
    ON [dbo].[UserPreference]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnPreferenceId]
    ON [dbo].[UserPreference]([PreferenceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnPreferencedRecordId]
    ON [dbo].[UserPreference]([PreferencedRecordId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnPreferencedRecordType]
    ON [dbo].[UserPreference]([PreferencedRecordType] ASC);

