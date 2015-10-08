CREATE TABLE [dbo].[PartyResourceAvailability] (
    [Id]          INT      IDENTITY (1, 1) NOT NULL,
    [FromDate]    DATETIME NULL,
    [ToDate]      DATETIME NULL,
    [PartyId]     INT      NULL,
    [PartyTypeId] INT      NULL,
    [CreatedAt]   DATETIME NOT NULL,
    [UpdatedAt]   DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPartyResourceAvailabilityOnFromDate]
    ON [dbo].[PartyResourceAvailability]([FromDate] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartyResourceAvailabilityOnToDate]
    ON [dbo].[PartyResourceAvailability]([ToDate] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartyResourceAvailabilityOnPartyTypeId]
    ON [dbo].[PartyResourceAvailability]([PartyTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartyResourceAvailabilityOnPartyId]
    ON [dbo].[PartyResourceAvailability]([PartyId] ASC);

