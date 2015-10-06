CREATE TABLE [dbo].[fixed_assets] (
    [id]                      INT           IDENTITY (1, 1) NOT NULL,
    [fixed_asset_type_id]     INT           NULL,
    [description]             VARCHAR (255) NULL,
    [comments]                VARCHAR (255) NULL,
    [internal_identifier]     VARCHAR (255) NULL,
    [external_identifier]     VARCHAR (255) NULL,
    [external_id_source]      VARCHAR (255) NULL,
    [fixed_asset_record_type] VARCHAR (255) NULL,
    [fixed_asset_record_id]   INT           NULL,
    [created_at]              DATETIME      NOT NULL,
    [updated_at]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fixed_assets_record_idx]
    ON [dbo].[fixed_assets]([fixed_asset_record_type] ASC, [fixed_asset_record_id] ASC);


GO
CREATE NONCLUSTERED INDEX [fixed_assets_fixed_asset_type_idx]
    ON [dbo].[fixed_assets]([fixed_asset_type_id] ASC);

