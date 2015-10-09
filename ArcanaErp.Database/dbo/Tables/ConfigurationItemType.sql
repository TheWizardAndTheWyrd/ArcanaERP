CREATE TABLE [dbo].[ConfigurationItemType] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]               INT           NULL,
    [LeftValue]              INT           NULL,
    [RightValue]             INT           NULL,
    [Precedence]             INT           DEFAULT ((0)) NULL,
    [Description]            VARCHAR (255) NULL,
    [InternalIdentifier]     VARCHAR (255) NULL,
    [AllowUserDefinedOption] BIT           DEFAULT ('f') NULL,
    [IsMultiOptional]        BIT           DEFAULT ('f') NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ConfigurationItemTypeParentIdIndex]
    ON [dbo].[ConfigurationItemType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfigurationItemTypeLeftValueIndex]
    ON [dbo].[ConfigurationItemType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfigurationItemTypeRightValueIndex]
    ON [dbo].[ConfigurationItemType]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfigurationItemTypeInternalIdentifierIndex]
    ON [dbo].[ConfigurationItemType]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [ConfigItemTypeprecedenceIndex]
    ON [dbo].[ConfigurationItemType]([Precedence] ASC);

