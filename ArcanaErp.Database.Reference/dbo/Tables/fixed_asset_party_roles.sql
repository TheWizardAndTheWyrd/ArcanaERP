CREATE TABLE [dbo].[fixed_asset_party_roles] (
    [id]             INT      IDENTITY (1, 1) NOT NULL,
    [party_id]       INT      NULL,
    [fixed_asset_id] INT      NULL,
    [role_type_id]   INT      NULL,
    [created_at]     DATETIME NOT NULL,
    [updated_at]     DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

