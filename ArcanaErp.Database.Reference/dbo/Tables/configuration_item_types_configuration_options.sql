CREATE TABLE [dbo].[configuration_item_types_configuration_options] (
    [id]                         INT      IDENTITY (1, 1) NOT NULL,
    [configuration_item_type_id] INT      NULL,
    [configuration_option_id]    INT      NULL,
    [is_default]                 BIT      DEFAULT ('f') NULL,
    [created_at]                 DATETIME NOT NULL,
    [updated_at]                 DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [conf_item_type_conf_opt_id_item_idx]
    ON [dbo].[configuration_item_types_configuration_options]([configuration_item_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [conf_item_type_conf_opt_id_opt_idx]
    ON [dbo].[configuration_item_types_configuration_options]([configuration_option_id] ASC);

