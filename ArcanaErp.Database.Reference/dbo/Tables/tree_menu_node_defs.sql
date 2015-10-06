CREATE TABLE [dbo].[tree_menu_node_defs] (
    [id]               INT           IDENTITY (1, 1) NOT NULL,
    [node_type]        VARCHAR (255) NULL,
    [parent_id]        INT           NULL,
    [lft]              INT           NULL,
    [rgt]              INT           NULL,
    [menu_short_name]  VARCHAR (255) NULL,
    [menu_description] VARCHAR (255) NULL,
    [text]             VARCHAR (255) NULL,
    [icon_url]         VARCHAR (255) NULL,
    [target_url]       VARCHAR (255) NULL,
    [resource_class]   VARCHAR (255) NULL,
    [created_at]       DATETIME      NOT NULL,
    [updated_at]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_tree_menu_node_defs_on_parent_id]
    ON [dbo].[tree_menu_node_defs]([parent_id] ASC);

