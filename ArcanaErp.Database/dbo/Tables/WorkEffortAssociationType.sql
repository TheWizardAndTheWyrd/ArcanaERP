CREATE TABLE [dbo].[WorkEffortAssociationType] (
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
CREATE NONCLUSTERED INDEX [IndexWorkEffortAssociationTypeOnValidFromRoleTypeId]
    ON [dbo].[WorkEffortAssociationType]([ValidFromRoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWorkEffortAssociationTypeOnValidToRoleTypeId]
    ON [dbo].[WorkEffortAssociationType]([ValidToRoleTypeId] ASC);

