CREATE TABLE [dbo].[tracked_status_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [external_identifier] VARCHAR (255) NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [parent_id]           INT           NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [tracked_status_types_iid_idx]
    ON [dbo].[tracked_status_types]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [index_tracked_status_types_on_lft]
    ON [dbo].[tracked_status_types]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [index_tracked_status_types_on_rgt]
    ON [dbo].[tracked_status_types]([rgt] ASC);


GO
CREATE NONCLUSTERED INDEX [index_tracked_status_types_on_parent_id]
    ON [dbo].[tracked_status_types]([parent_id] ASC);

