CREATE TABLE [dbo].[CalendarInvite] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Title]           VARCHAR (255) NULL,
    [Invitetext]      TEXT          NULL,
    [CalendarEventId] INT           NULL,
    [InviterId]       INT           NULL,
    [InviteeId]       INT           NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CalendarInviteIdIndex]
    ON [dbo].[CalendarInvite]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarInviteEventIdIndex]
    ON [dbo].[CalendarInvite]([CalendarEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarInviteInviterIdIndex]
    ON [dbo].[CalendarInvite]([InviterId] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarInviteInviteeIdIndex]
    ON [dbo].[CalendarInvite]([InviteeId] ASC);

