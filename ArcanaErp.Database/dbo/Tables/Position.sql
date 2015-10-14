CREATE TABLE [dbo].[Position] (
    [Id]                   INT      IDENTITY (1, 1) NOT NULL,
    [PartyId]              INT      NULL,
    [PositionTypeId]       INT      NULL,
    [EstimatedFromDate]    DATE     NULL,
    [EstimatedThroughDate] DATE     NULL,
    [SalaryFlag]           BIT      NULL,
    [ExemptFlag]           BIT      NULL,
    [FullTimeFlag]         BIT      NULL,
    [TemporaryFlag]        BIT      NULL,
    [ActualFromDate]       DATE     NULL,
    [ActualThroughDate]    DATE     NULL,
    [CreatedAt]            DATETIME NOT NULL,
    [UpdatedAt]            DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPositionOnPositionTypeId]
    ON [dbo].[Position]([PositionTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPositionOnPartyId]
    ON [dbo].[Position]([PartyId] ASC);

