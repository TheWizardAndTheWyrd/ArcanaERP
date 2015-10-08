CREATE TABLE [dbo].[PreferenceOptionPreferenceType] (
    [PreferenceTypeId]   INT NULL,
    [PreferenceoptiOnId] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [prefoptprefTypeprefTypeIdIndex]
    ON [dbo].[PreferenceOptionPreferenceType]([PreferenceTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [prefoptprefTypeprefoptIdIndex]
    ON [dbo].[PreferenceOptionPreferenceType]([PreferenceoptiOnId] ASC);

