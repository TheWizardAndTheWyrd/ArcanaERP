CREATE TABLE [dbo].[website_nav_items] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [website_nav_id]      INT           NULL,
    [title]               VARCHAR (255) NULL,
    [url]                 VARCHAR (255) NULL,
    [position]            INT           DEFAULT ((0)) NULL,
    [linked_to_item_id]   INT           NULL,
    [linked_to_item_type] VARCHAR (255) NULL,
    [parent_id]           INT           NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [linked_to_idx]
    ON [dbo].[website_nav_items]([linked_to_item_id] ASC, [linked_to_item_type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_nav_items_on_website_nav_id]
    ON [dbo].[website_nav_items]([website_nav_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_nav_items_on_position]
    ON [dbo].[website_nav_items]([position] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_nav_items_on_parent_id]
    ON [dbo].[website_nav_items]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_nav_items_on_lft]
    ON [dbo].[website_nav_items]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_nav_items_on_rgt]
    ON [dbo].[website_nav_items]([rgt] ASC);

