CREATE TABLE [dbo].[Configuration] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Active]             BIT           NULL,
    [IsTemplateText]      BIT           DEFAULT ('f') NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationOnisTempateText]
    ON [dbo].[Configuration]([IsTemplateText] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfigurationInternalIdentifierIndex]
    ON [dbo].[Configuration]([InternalIdentifier] ASC);

