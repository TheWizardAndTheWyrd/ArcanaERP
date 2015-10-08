CREATE TABLE [dbo].[PreferenceType] (
    [Id]                        INT           IDENTITY (1, 1) NOT NULL,
    [Description]               VARCHAR (255) NULL,
    [InternalIdentifier]        VARCHAR (255) NULL,
    [DefaultPreferenceOptionId] INT           NULL,
    [CreatedAt]                 DATETIME      NOT NULL,
    [UpdatedAt]                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPreferenceTypeOnDefaultPreferenceOptionId]
    ON [dbo].[PreferenceType]([DefaultPreferenceOptionId] ASC);


GO
CREATE NONCLUSTERED INDEX [PreferenceTypeInternalIdentifierIndex]
    ON [dbo].[PreferenceType]([InternalIdentifier] ASC);

