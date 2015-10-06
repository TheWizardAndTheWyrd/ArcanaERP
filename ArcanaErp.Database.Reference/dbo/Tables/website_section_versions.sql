CREATE TABLE [dbo].[website_section_versions] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [website_section_id]  INT           NULL,
    [version]             INT           NULL,
    [title]               VARCHAR (255) DEFAULT (NULL) NULL,
    [website_id]          INT           DEFAULT (NULL) NULL,
    [path]                VARCHAR (255) DEFAULT (NULL) NULL,
    [permalink]           VARCHAR (255) DEFAULT (NULL) NULL,
    [layout]              TEXT          DEFAULT (NULL) NULL,
    [in_menu]             BIT           DEFAULT (NULL) NULL,
    [position]            INT           DEFAULT ((0)) NULL,
    [use_markdown]        BIT           DEFAULT (NULL) NULL,
    [internal_identifier] VARCHAR (255) DEFAULT (NULL) NULL,
    [render_base_layout]  BIT           DEFAULT ('t') NULL,
    [created_at]          DATETIME      DEFAULT (NULL) NULL,
    [updated_at]          DATETIME      DEFAULT (NULL) NULL,
    [versioned_type]      VARCHAR (255) DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_website_section_versions_on_website_section_id]
    ON [dbo].[website_section_versions]([website_section_id] ASC);


GO
CREATE NONCLUSTERED INDEX [website_section_versions_website_id_idx]
    ON [dbo].[website_section_versions]([website_id] ASC);


GO
CREATE NONCLUSTERED INDEX [website_section_versions_internal_identifier_idx]
    ON [dbo].[website_section_versions]([internal_identifier] ASC);

