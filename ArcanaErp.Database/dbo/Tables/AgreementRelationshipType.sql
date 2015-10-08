CREATE TABLE [dbo].[AgreementRelationshipType] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]            INT           NULL,
    [LeftValue]           INT           NULL,
    [RightValue]          INT           NULL,
    [ValidFromRoleTypeId] INT           NULL,
    [ValidToRoleTypeId]   INT           NULL,
    [Name]                VARCHAR (255) NULL,
    [Description]         VARCHAR (255) NULL,
    [InternalIdentifier]  VARCHAR (255) NULL,
    [ExternalIdentifier]  VARCHAR (255) NULL,
    [ExternalIdSource]    VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementRelationshipTypeOnParentId]
    ON [dbo].[AgreementRelationshipType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementRelationshipTypeOnValidFromRoleTypeId]
    ON [dbo].[AgreementRelationshipType]([ValidFromRoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementRelationshipTypeOnValidToRoleTypeId]
    ON [dbo].[AgreementRelationshipType]([ValidToRoleTypeId] ASC);

