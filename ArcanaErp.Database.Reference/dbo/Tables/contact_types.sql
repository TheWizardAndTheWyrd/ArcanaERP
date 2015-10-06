CREATE TABLE [dbo].[contact_types] (
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
CREATE NONCLUSTERED INDEX [index_contact_types_on_parent_id]
    ON [dbo].[contact_types]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_contact_types_on_lft]
    ON [dbo].[contact_types]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [index_contact_types_on_rgt]
    ON [dbo].[contact_types]([rgt] ASC);


GO
CREATE NONCLUSTERED INDEX [contact_types_internal_identifier_idx]
    ON [dbo].[contact_types]([internal_identifier] ASC);

