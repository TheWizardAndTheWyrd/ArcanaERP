CREATE TABLE [dbo].[geo_countries] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [name]        VARCHAR (255) NULL,
    [iso_code_2]  VARCHAR (255) NULL,
    [iso_code_3]  VARCHAR (255) NULL,
    [display]     BIT           DEFAULT ('t') NULL,
    [external_id] INT           NULL,
    [created_at]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_geo_countries_on_name]
    ON [dbo].[geo_countries]([name] ASC);


GO
CREATE NONCLUSTERED INDEX [index_geo_countries_on_iso_code_2]
    ON [dbo].[geo_countries]([iso_code_2] ASC);

