CREATE TABLE [dbo].[view_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [description]         VARCHAR (255) NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [parent_id]           INT           NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_view_types_on_lft]
    ON [dbo].[view_types]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [index_view_types_on_rgt]
    ON [dbo].[view_types]([rgt] ASC);


GO
CREATE NONCLUSTERED INDEX [index_view_types_on_parent_id]
    ON [dbo].[view_types]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [view_types_internal_identifier_idx]
    ON [dbo].[view_types]([internal_identifier] ASC);

