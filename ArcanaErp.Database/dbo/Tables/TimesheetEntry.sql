CREATE TABLE [dbo].[TimesheetEntry] (
    [Id]                  INT            IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]        INT            NULL,
    [Description]         VARCHAR (255)  NULL,
    [WorkedDate]          DATE           NULL,
    [EnteredDate]         DATETIME       NULL,
    [RegularHoursWorked]  DECIMAL (5, 2) NULL,
    [OverTimeHoursWorked] DECIMAL (5, 2) NULL,
    [StartTime]           DATETIME       NULL,
    [EndTime]             DATETIME       NULL,
    [Comments]            TEXT           NULL,
    [CreatedAt]           DATETIME       NOT NULL,
    [UpdatedAt]           DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexTimesheetEntryOnWorkEffortId]
    ON [dbo].[TimesheetEntry]([WorkEffortId] ASC);

