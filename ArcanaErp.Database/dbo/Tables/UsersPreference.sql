CREATE TABLE [dbo].[UsersPreference] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [UsersId]               INT           NULL,
    [PreferenceId]          INT           NULL,
    [PreferencedRecordId]   INT           NULL,
    [PreferencedRecordType] VARCHAR (255) NULL,
    [CreatedAt]             DATETIME      NOT NULL,
    [UpdatedAt]             DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnUsersId]
    ON [dbo].[UsersPreference]([UsersId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnPreferenceId]
    ON [dbo].[UsersPreference]([PreferenceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnPreferencedRecordId]
    ON [dbo].[UsersPreference]([PreferencedRecordId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersPreferenceOnPreferencedRecordType]
    ON [dbo].[UsersPreference]([PreferencedRecordType] ASC);

