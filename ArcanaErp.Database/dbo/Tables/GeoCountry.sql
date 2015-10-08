CREATE TABLE [dbo].[GeoCountry] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Name]       VARCHAR (255) NULL,
    [IsoCode2]   VARCHAR (255) NULL,
    [isocode3]   VARCHAR (255) NULL,
    [display]    BIT           DEFAULT ('t') NULL,
    [ExternalId] INT           NULL,
    [CreatedAt]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexGeoCountryOnName]
    ON [dbo].[GeoCountry]([Name] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexGeoCountryOnIsoCode2]
    ON [dbo].[GeoCountry]([IsoCode2] ASC);

