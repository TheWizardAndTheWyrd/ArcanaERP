CREATE TABLE [dbo].[TransportationRouteStop] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [InternalIdentifier]    VARCHAR (255) NULL,
    [Description]           VARCHAR (255) NULL,
    [PostalAddressId]       INT           NULL,
    [GeoLocation]           VARCHAR (255) NULL,
    [Sequence]              INT           NULL,
    [ExternalIdentifier]    VARCHAR (255) NULL,
    [ExternalIdSource]      VARCHAR (255) NULL,
    [TransportationRouteId] INT           NULL,
    [CreatedAt]             DATETIME      NOT NULL,
    [UpdatedAt]             DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

