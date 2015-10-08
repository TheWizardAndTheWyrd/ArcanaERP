CREATE TABLE [dbo].[AgreementRoleType] (
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
CREATE NONCLUSTERED INDEX [IndexAgreementRoleTypeOnParentId]
    ON [dbo].[AgreementRoleType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementRoleTypeOnLeftValue]
    ON [dbo].[AgreementRoleType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementRoleTypeOnRightValue]
    ON [dbo].[AgreementRoleType]([RightValue] ASC);

