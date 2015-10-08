CREATE TABLE [dbo].[PartyResourceAvailabilityType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPartyResourceAvailabilityTypeOnInternalIdentifier]
    ON [dbo].[PartyResourceAvailabilityType]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartyResourceAvailabilityTypeOnDescription]
    ON [dbo].[PartyResourceAvailabilityType]([Description] ASC);

