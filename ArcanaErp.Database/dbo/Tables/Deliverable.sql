CREATE TABLE [dbo].[Deliverable] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [Description]           VARCHAR (255) NULL,
    [Comments]              VARCHAR (255) NULL,
    [InternalIdentifier]    VARCHAR (255) NULL,
    [ExternalIdentifier]    VARCHAR (255) NULL,
    [ExternalIdSource]      VARCHAR (255) NULL,
    [DeliverableRecordType] VARCHAR (255) NULL,
    [DeliverableRecordId]   INT           NULL,
    [CreatedAt]             DATETIME      NOT NULL,
    [UpdatedAt]             DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

