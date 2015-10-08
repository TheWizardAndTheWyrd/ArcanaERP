CREATE TABLE [dbo].[AgreementType] (
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
CREATE NONCLUSTERED INDEX [IndexAgreementTypeOnParentId]
    ON [dbo].[AgreementType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementTypeOnLeftValue]
    ON [dbo].[AgreementType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementTypeOnRightValue]
    ON [dbo].[AgreementType]([RightValue] ASC);

