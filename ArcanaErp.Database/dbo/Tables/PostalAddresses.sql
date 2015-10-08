CREATE TABLE [dbo].[PostalAddresses] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [Addressline1] VARCHAR (255)   NULL,
    [Addressline2] VARCHAR (255)   NULL,
    [city]         VARCHAR (255)   NULL,
    [State]        VARCHAR (255)   NULL,
    [zip]          VARCHAR (255)   NULL,
    [Country]      VARCHAR (255)   NULL,
    [Description]  VARCHAR (255)   NULL,
    [GeoCountryId] INT             NULL,
    [GeozOneId]    INT             NULL,
    [latitude]     DECIMAL (12, 8) NULL,
    [lOngitude]    DECIMAL (12, 8) NULL,
    [CreatedAt]    DATETIME        NOT NULL,
    [UpdatedAt]    DATETIME        NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPostalAddressesOnGeoCountryId]
    ON [dbo].[PostalAddresses]([GeoCountryId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPostalAddressesOnGeozOneId]
    ON [dbo].[PostalAddresses]([GeozOneId] ASC);

