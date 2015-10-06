CREATE TABLE [dbo].[configuration_item_types] (
    [id]                         INT           IDENTITY (1, 1) NOT NULL,
    [parent_id]                  INT           NULL,
    [lft]                        INT           NULL,
    [rgt]                        INT           NULL,
    [precedence]                 INT           DEFAULT ((0)) NULL,
    [description]                VARCHAR (255) NULL,
    [internal_identifier]        VARCHAR (255) NULL,
    [allow_user_defined_options] BIT           DEFAULT ('f') NULL,
    [is_multi_optional]          BIT           DEFAULT ('f') NULL,
    [created_at]                 DATETIME      NOT NULL,
    [updated_at]                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [configuration_item_types_parent_id_idx]
    ON [dbo].[configuration_item_types]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [configuration_item_types_lft_idx]
    ON [dbo].[configuration_item_types]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [configuration_item_types_rgtidx]
    ON [dbo].[configuration_item_types]([rgt] ASC);


GO
CREATE NONCLUSTERED INDEX [configuration_item_types_internal_identifier_idx]
    ON [dbo].[configuration_item_types]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [config_item_type_precedence_idx]
    ON [dbo].[configuration_item_types]([precedence] ASC);

