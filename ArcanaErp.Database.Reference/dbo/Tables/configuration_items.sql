CREATE TABLE [dbo].[configuration_items] (
    [id]                         INT      IDENTITY (1, 1) NOT NULL,
    [configuration_id]           INT      NULL,
    [configuration_item_type_id] INT      NULL,
    [configuration_option_id]    INT      NULL,
    [created_at]                 DATETIME NOT NULL,
    [updated_at]                 DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_configuration_items_on_configuration_id]
    ON [dbo].[configuration_items]([configuration_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_configuration_items_on_configuration_item_type_id]
    ON [dbo].[configuration_items]([configuration_item_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_configuration_items_on_configuration_option_id]
    ON [dbo].[configuration_items]([configuration_option_id] ASC);

