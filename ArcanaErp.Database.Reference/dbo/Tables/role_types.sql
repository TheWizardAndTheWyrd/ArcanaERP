CREATE TABLE [dbo].[role_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [parent_id]           INT           NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [description]         VARCHAR (255) NULL,
    [comments]            VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [external_identifier] VARCHAR (255) NULL,
    [external_id_source]  VARCHAR (255) NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [role_types_iid_idx]
    ON [dbo].[role_types]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [role_types_parent_id_idx]
    ON [dbo].[role_types]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [role_types_lft_idx]
    ON [dbo].[role_types]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [role_types_rgt_idx]
    ON [dbo].[role_types]([rgt] ASC);

