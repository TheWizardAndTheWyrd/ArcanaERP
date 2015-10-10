CREATE TABLE [dbo].[PostalAddress] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [AddressLine1] VARCHAR (255)   NULL,
    [AddressLine2] VARCHAR (255)   NULL,
    [City]         VARCHAR (255)   NULL,
    [State]        VARCHAR (255)   NULL,
    [Zip]          VARCHAR (255)   NULL,
    [Country]      VARCHAR (255)   NULL,
    [Description]  VARCHAR (255)   NULL,
    [GeoCountryId] INT             NULL,
    [GeoZoneId]    INT             NULL,
    [Latitude]     DECIMAL (12, 8) NULL,
    [Longitude]    DECIMAL (12, 8) NULL,
    [CreatedAt]    DATETIME        NOT NULL,
    [UpdatedAt]    DATETIME        NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPostalAddressesOnGeoCountryId]
    ON [dbo].[PostalAddress]([GeoCountryId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPostalAddressesOnGeoZoneId]
    ON [dbo].[PostalAddress]([GeoZoneId] ASC);

