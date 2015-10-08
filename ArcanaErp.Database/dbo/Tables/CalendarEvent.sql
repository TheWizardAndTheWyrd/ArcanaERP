CREATE TABLE [dbo].[CalendarEvent] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [Title]            VARCHAR (255) NULL,
    [StartTime]        DATETIME      NULL,
    [EndTime]          DATETIME      NULL,
    [AllDay]           BIT           DEFAULT ('f') NULL,
    [IsPublic]         BIT           DEFAULT ('t') NULL,
    [Description]      TEXT          NULL,
    [ListViewImageUrl] VARCHAR (255) NULL,
    [Status]           VARCHAR (255) NULL,
    [CustomFields]     TEXT          NULL,
    [CreatedAt]        DATETIME      NOT NULL,
    [UpdatedAt]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CalendarEventIdIndex]
    ON [dbo].[CalendarEvent]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarEventStartTimeIndex]
    ON [dbo].[CalendarEvent]([StartTime] ASC);


GO
CREATE NONCLUSTERED INDEX [CalendarEventEndTimeIndex]
    ON [dbo].[CalendarEvent]([EndTime] ASC);

