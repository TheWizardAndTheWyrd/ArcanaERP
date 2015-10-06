CREATE TABLE [dbo].[valid_configurations] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [configured_item_id]   INT           NULL,
    [configured_item_type] VARCHAR (255) NULL,
    [configuration_id]     INT           NULL,
    [created_at]           DATETIME      NOT NULL,
    [updated_at]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [configured_item_poly_idx]
    ON [dbo].[valid_configurations]([configured_item_id] ASC, [configured_item_type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_valid_configurations_on_configuration_id]
    ON [dbo].[valid_configurations]([configuration_id] ASC);

