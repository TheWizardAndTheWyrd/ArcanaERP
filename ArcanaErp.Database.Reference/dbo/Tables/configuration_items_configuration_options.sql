CREATE TABLE [dbo].[configuration_items_configuration_options] (
    [configuration_item_id]   INT NULL,
    [configuration_option_id] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [conf_item_conf_opt_id_item_idx]
    ON [dbo].[configuration_items_configuration_options]([configuration_item_id] ASC);


GO
CREATE NONCLUSTERED INDEX [conf_item_conf_opt_id_opt_idx]
    ON [dbo].[configuration_items_configuration_options]([configuration_option_id] ASC);

