CREATE TABLE [dbo].[SecurityRole] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdsource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [ParentId]           INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SecurityRoleInternalIdentifierIndex]
    ON [dbo].[SecurityRole]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexSecurityRoleOnParentId]
    ON [dbo].[SecurityRole]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexSecurityRoleOnLeftValue]
    ON [dbo].[SecurityRole]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexSecurityRoleOnRightValue]
    ON [dbo].[SecurityRole]([RightValue] ASC);

