CREATE TABLE [dbo].[ViewType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Description]        VARCHAR (255) NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [ParentId]           INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexViewTypeOnLeftValue]
    ON [dbo].[ViewType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexViewTypeOnRightValue]
    ON [dbo].[ViewType]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexViewTypeOnParentId]
    ON [dbo].[ViewType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ViewTypeInternalIdentifierIndex]
    ON [dbo].[ViewType]([InternalIdentifier] ASC);

