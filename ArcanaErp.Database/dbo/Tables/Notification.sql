CREATE TABLE [dbo].[Notification] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Type]               VARCHAR (255) NULL,
    [CreatedById]        INT           NULL,
    [Message]            TEXT          NULL,
    [NotificationTypeId] INT           NULL,
    [CurrentState]       VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    [CustomFields]       TEXT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexNotificationOnNotificationTypeId]
    ON [dbo].[Notification]([NotificationTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexNotificationOnCreatedById]
    ON [dbo].[Notification]([CreatedById] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexNotificationOnType]
    ON [dbo].[Notification]([Type] ASC);

