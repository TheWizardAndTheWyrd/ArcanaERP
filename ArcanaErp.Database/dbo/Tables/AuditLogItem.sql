CREATE TABLE [dbo].[AuditLogItem] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [AuditLogId]           INT           NULL,
    [AuditLogItemTypeId]   INT           NULL,
    [AuditLogItemValue]    VARCHAR (255) NULL,
    [AuditLogItemOldValue] VARCHAR (255) NULL,
    [Description]          VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemsAuditLogIdIndex]
    ON [dbo].[AuditLogItem]([AuditLogId] ASC);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemsAuditLogItemTypeIdIndex]
    ON [dbo].[AuditLogItem]([AuditLogItemTypeId] ASC);

