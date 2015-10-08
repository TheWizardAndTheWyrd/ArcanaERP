CREATE TABLE [dbo].[AuditLog] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Application]     VARCHAR (255) NULL,
    [Description]     VARCHAR (255) NULL,
    [PartyId]         INT           NULL,
    [additiOnalinfo]  TEXT          NULL,
    [AuditLogTypeId]  INT           NULL,
    [EventRecordId]   INT           NULL,
    [EventRecordType] VARCHAR (255) NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexAuditLogOnPartyId]
    ON [dbo].[AuditLog]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [EventRecordIndex]
    ON [dbo].[AuditLog]([EventRecordId] ASC, [EventRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [AuditLogAuditLogTypeIdIndex]
    ON [dbo].[AuditLog]([AuditLogTypeId] ASC);

