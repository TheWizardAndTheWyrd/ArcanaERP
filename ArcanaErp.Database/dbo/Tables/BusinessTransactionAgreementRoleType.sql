CREATE TABLE [dbo].[BusinessTransactionAgreementRoleType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [Comments]           VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAgreementRoleTypeOnParentId]
    ON [dbo].[BusinessTransactionAgreementRoleType]([ParentId] ASC);

