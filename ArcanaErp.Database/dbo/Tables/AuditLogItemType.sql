CREATE TABLE [dbo].[AuditLogItemType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [Description]        VARCHAR (255) NULL,
    [Comments]           VARCHAR (255) NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemTypeInternalIdentifierIndex]
    ON [dbo].[AuditLogItemType]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemTypeParentIdIndex]
    ON [dbo].[AuditLogItemType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemTypeLeftValueIndex]
    ON [dbo].[AuditLogItemType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemTypeRightValueIndex]
    ON [dbo].[AuditLogItemType]([RightValue] ASC);

