CREATE TABLE [dbo].[AuditLogType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [ErrorCode]          VARCHAR (255) NULL,
    [Comments]           VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [ParentId]           INT           NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AuditLogTypeInternalIdentifierIndex]
    ON [dbo].[AuditLogType]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [AuditLogTypeParentIdIndex]
    ON [dbo].[AuditLogType]([ParentId] ASC);

