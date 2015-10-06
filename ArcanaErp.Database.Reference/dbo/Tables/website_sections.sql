CREATE TABLE [dbo].[website_sections] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [title]               VARCHAR (255) NULL,
    [type]                VARCHAR (255) NULL,
    [website_id]          INT           NULL,
    [path]                VARCHAR (255) NULL,
    [permalink]           VARCHAR (255) NULL,
    [layout]              TEXT          NULL,
    [in_menu]             BIT           NULL,
    [position]            INT           DEFAULT ((0)) NULL,
    [use_markdown]        BIT           NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [version]             INT           NULL,
    [render_base_layout]  BIT           DEFAULT ('t') NULL,
    [parent_id]           INT           NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_website_sections_on_permalink]
    ON [dbo].[website_sections]([permalink] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_sections_on_website_id]
    ON [dbo].[website_sections]([website_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_sections_on_position]
    ON [dbo].[website_sections]([position] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_sections_on_parent_id]
    ON [dbo].[website_sections]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_sections_on_lft]
    ON [dbo].[website_sections]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_sections_on_rgt]
    ON [dbo].[website_sections]([rgt] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_sections_on_version]
    ON [dbo].[website_sections]([version] ASC);


GO
CREATE NONCLUSTERED INDEX [section_iid_idx]
    ON [dbo].[website_sections]([internal_identifier] ASC);

