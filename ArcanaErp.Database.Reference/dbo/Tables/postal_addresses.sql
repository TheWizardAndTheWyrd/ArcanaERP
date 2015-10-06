CREATE TABLE [dbo].[postal_addresses] (
    [id]             INT             IDENTITY (1, 1) NOT NULL,
    [address_line_1] VARCHAR (255)   NULL,
    [address_line_2] VARCHAR (255)   NULL,
    [city]           VARCHAR (255)   NULL,
    [state]          VARCHAR (255)   NULL,
    [zip]            VARCHAR (255)   NULL,
    [country]        VARCHAR (255)   NULL,
    [description]    VARCHAR (255)   NULL,
    [geo_country_id] INT             NULL,
    [geo_zone_id]    INT             NULL,
    [latitude]       DECIMAL (12, 8) NULL,
    [longitude]      DECIMAL (12, 8) NULL,
    [created_at]     DATETIME        NOT NULL,
    [updated_at]     DATETIME        NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_postal_addresses_on_geo_country_id]
    ON [dbo].[postal_addresses]([geo_country_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_postal_addresses_on_geo_zone_id]
    ON [dbo].[postal_addresses]([geo_zone_id] ASC);

