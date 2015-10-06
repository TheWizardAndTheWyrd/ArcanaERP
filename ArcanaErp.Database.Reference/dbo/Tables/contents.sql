CREATE TABLE [dbo].[contents] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [type]                VARCHAR (255) NULL,
    [title]               VARCHAR (255) NULL,
    [permalink]           VARCHAR (255) NULL,
    [excerpt_html]        TEXT          NULL,
    [body_html]           TEXT          NULL,
    [created_by_id]       INT           NULL,
    [updated_by_id]       INT           NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [display_title]       BIT           NULL,
    [version]             INT           NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_contents_on_type]
    ON [dbo].[contents]([type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_contents_on_created_by_id]
    ON [dbo].[contents]([created_by_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_contents_on_updated_by_id]
    ON [dbo].[contents]([updated_by_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_contents_on_permalink]
    ON [dbo].[contents]([permalink] ASC);


GO
CREATE NONCLUSTERED INDEX [index_contents_on_version]
    ON [dbo].[contents]([version] ASC);


GO
CREATE NONCLUSTERED INDEX [contents_iid_idx]
    ON [dbo].[contents]([internal_identifier] ASC);

