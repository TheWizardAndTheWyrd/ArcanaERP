CREATE TABLE [dbo].[AuditLogItems] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [AuditLogId]           INT           NULL,
    [AuditLogItemTypeId]   INT           NULL,
    [AuditLogItemValue]    VARCHAR (255) NULL,
    [AuditLogItemoldValue] VARCHAR (255) NULL,
    [Description]          VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemsAuditLogIdIndex]
    ON [dbo].[AuditLogItems]([AuditLogId] ASC);


GO
CREATE NONCLUSTERED INDEX [AuditLogItemsAuditLogItemTypeIdIndex]
    ON [dbo].[AuditLogItems]([AuditLogItemTypeId] ASC);

