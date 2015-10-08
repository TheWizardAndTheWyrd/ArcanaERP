CREATE TABLE [dbo].[CalendarEventPartyRole] (
    [Id]              INT      IDENTITY (1, 1) NOT NULL,
    [PartyId]         INT      NULL,
    [RoleTypeId]      INT      NULL,
    [CalendarEventId] INT      NULL,
    [Description]     TEXT     NULL,
    [CreatedAt]       DATETIME NOT NULL,
    [UpdatedAt]       DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CalendarEventPartyRoleIdIndex]
    ON [dbo].[CalendarEventPartyRole]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarEventPartyRolePartyIdIndex]
    ON [dbo].[CalendarEventPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarEventPartyRoleEventIdIndex]
    ON [dbo].[CalendarEventPartyRole]([CalendarEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarEventPartyRoleRoleTypeIdIndex]
    ON [dbo].[CalendarEventPartyRole]([RoleTypeId] ASC);

