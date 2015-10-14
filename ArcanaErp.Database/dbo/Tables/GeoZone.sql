CREATE TABLE [dbo].[GeoZone] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [GeoCountryId] INT           NULL,
    [ZoneCode]     VARCHAR (255) DEFAULT ((2)) NULL,
    [ZoneName]     VARCHAR (255) NULL,
    [CreatedAt]    DATETIME      NOT NULL,
	[UpdatedAt]    DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexGeoZoneOnGeoCountryId]
    ON [dbo].[GeoZone]([GeoCountryId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexGeoZoneOnZoneName]
    ON [dbo].[GeoZone]([ZoneName] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexGeoZoneOnZoneCode]
    ON [dbo].[GeoZone]([ZoneCode] ASC);

