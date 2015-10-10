CREATE TABLE [dbo].[ContactType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [Comments]           VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexContactTypeOnParentId]
    ON [dbo].[ContactType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexContactTypeOnLeftValue]
    ON [dbo].[ContactType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexContactTypeOnRightValue]
    ON [dbo].[ContactType]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ContactTypeInternalIdentifierIndex]
    ON [dbo].[ContactType]([InternalIdentifier] ASC);

