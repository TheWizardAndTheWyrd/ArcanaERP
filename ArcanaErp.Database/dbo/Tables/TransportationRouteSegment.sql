CREATE TABLE [dbo].[TransportationRouteSegment] (
    [Id]                            INT           IDENTITY (1, 1) NOT NULL,
    [InternalIdentifier]            VARCHAR (255) NULL,
    [Description]                   VARCHAR (255) NULL,
    [Comments]                      VARCHAR (255) NULL,
    [ExternalIdentifier]            VARCHAR (255) NULL,
    [ExternalIdSource]              VARCHAR (255) NULL,
    [Sequence]                      INT           NULL,
    [EstimatedStart]                DATETIME      NULL,
    [EstimatedArrival]              DATETIME      NULL,
    [ActualStart]                   DATETIME      NULL,
    [ActualArrival]                 DATETIME      NULL,
    [StartMileage]                  INT           NULL,
    [EndMileage]                    INT           NULL,
    [FuelUsed]                      INT           NULL,
    [TransportationRouteId]         INT           NULL,
    [FromTransportationRoutestopId] INT           NULL,
    [ToTransportationRoutestopId]   INT           NULL,
    [CreatedAt]                     DATETIME      NOT NULL,
    [UpdatedAt]                     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

