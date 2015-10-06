CREATE TABLE [dbo].[content_versions] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [content_id]          INT           NULL,
    [version]             INT           NULL,
    [title]               VARCHAR (255) DEFAULT (NULL) NULL,
    [permalink]           VARCHAR (255) DEFAULT (NULL) NULL,
    [excerpt_html]        TEXT          DEFAULT (NULL) NULL,
    [body_html]           TEXT          DEFAULT (NULL) NULL,
    [created_by_id]       INT           DEFAULT (NULL) NULL,
    [updated_by_id]       INT           DEFAULT (NULL) NULL,
    [internal_identifier] VARCHAR (255) DEFAULT (NULL) NULL,
    [display_title]       BIT           DEFAULT (NULL) NULL,
    [created_at]          DATETIME      DEFAULT (NULL) NULL,
    [updated_at]          DATETIME      DEFAULT (NULL) NULL,
    [versioned_type]      VARCHAR (255) DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_content_versions_on_content_id]
    ON [dbo].[content_versions]([content_id] ASC);


GO
CREATE NONCLUSTERED INDEX [content_versions_created_by_id_idx]
    ON [dbo].[content_versions]([created_by_id] ASC);


GO
CREATE NONCLUSTERED INDEX [content_versions_updated_by_id_idx]
    ON [dbo].[content_versions]([updated_by_id] ASC);


GO
CREATE NONCLUSTERED INDEX [content_versions_internal_identifier_idx]
    ON [dbo].[content_versions]([internal_identifier] ASC);

