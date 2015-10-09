CREATE TABLE [dbo].[ConfigurationOption] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Value]              VARCHAR (255) NULL,
    [Comment]            TEXT          NULL,
    [UserDefined]       BIT           DEFAULT ('f') NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationOptionOnValue]
    ON [dbo].[ConfigurationOption]([Value] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationOptionOnInternalIdentifier]
    ON [dbo].[ConfigurationOption]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexConfigurationOptionOnUsersdefined]
    ON [dbo].[ConfigurationOption]([UserDefined] ASC);

