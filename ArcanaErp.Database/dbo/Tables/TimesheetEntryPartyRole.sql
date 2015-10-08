CREATE TABLE [dbo].[TimesheetEntryPartyRole] (
    [Id]               INT      IDENTITY (1, 1) NOT NULL,
    [TimesheetEntryId] INT      NULL,
    [PartyId]          INT      NULL,
    [RoleTypeId]       INT      NULL,
    [FromDate]         DATE     NULL,
    [ThroughDate]      DATE     NULL,
    [CreatedAt]        DATETIME NOT NULL,
    [UpdatedAt]        DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexTimesheetEntryPartyRoleOnTimesheetEntryId]
    ON [dbo].[TimesheetEntryPartyRole]([TimesheetEntryId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexTimesheetEntryPartyRoleOnPartyId]
    ON [dbo].[TimesheetEntryPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexTimesheetEntryPartyRoleOnRoleTypeId]
    ON [dbo].[TimesheetEntryPartyRole]([RoleTypeId] ASC);

