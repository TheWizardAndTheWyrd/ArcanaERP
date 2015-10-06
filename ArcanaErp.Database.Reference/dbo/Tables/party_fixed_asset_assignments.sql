CREATE TABLE [dbo].[party_fixed_asset_assignments] (
    [id]                      INT      IDENTITY (1, 1) NOT NULL,
    [party_id]                INT      NULL,
    [fixed_asset_id]          INT      NULL,
    [assigned_from]           DATETIME NULL,
    [assigned_thru]           DATETIME NULL,
    [allocated_cost_money_id] INT      NULL,
    [created_at]              DATETIME NOT NULL,
    [updated_at]              DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [party_fixed_asset_assign_idx]
    ON [dbo].[party_fixed_asset_assignments]([party_id] ASC, [fixed_asset_id] ASC);

