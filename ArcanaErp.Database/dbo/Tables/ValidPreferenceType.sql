CREATE TABLE [dbo].[ValidPreferenceType] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [PreferenceTypeId]      INT           NULL,
    [PreferencedRecordId]   INT           NULL,
    [PreferencedRecordType] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ValidPreferenceTypePreferenceTypeIdIndex]
    ON [dbo].[ValidPreferenceType]([PreferenceTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ValidPreferenceTypePreferencedRecordIdIndex]
    ON [dbo].[ValidPreferenceType]([PreferencedRecordId] ASC);

