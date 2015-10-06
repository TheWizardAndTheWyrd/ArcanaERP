CREATE TABLE [dbo].[configuration_item_types_configurations] (
    [configuration_item_type_id] INT NULL,
    [configuration_id]           INT NULL
);


GO
CREATE NONCLUSTERED INDEX [conf_conf_type_id_item_idx]
    ON [dbo].[configuration_item_types_configurations]([configuration_item_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [conf_id_idx]
    ON [dbo].[configuration_item_types_configurations]([configuration_id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [conf_config_type_uniq_idx]
    ON [dbo].[configuration_item_types_configurations]([configuration_item_type_id] ASC, [configuration_id] ASC);

