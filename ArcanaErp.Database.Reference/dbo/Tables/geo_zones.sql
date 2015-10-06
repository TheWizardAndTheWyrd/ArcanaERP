CREATE TABLE [dbo].[geo_zones] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [geo_country_id] INT           NULL,
    [zone_code]      VARCHAR (255) DEFAULT ((2)) NULL,
    [zone_name]      VARCHAR (255) NULL,
    [created_at]     DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_geo_zones_on_geo_country_id]
    ON [dbo].[geo_zones]([geo_country_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_geo_zones_on_zone_name]
    ON [dbo].[geo_zones]([zone_name] ASC);


GO
CREATE NONCLUSTERED INDEX [index_geo_zones_on_zone_code]
    ON [dbo].[geo_zones]([zone_code] ASC);

