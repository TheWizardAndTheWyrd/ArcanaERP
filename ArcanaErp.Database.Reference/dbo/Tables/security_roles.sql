CREATE TABLE [dbo].[security_roles] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [external_identifier] VARCHAR (255) NULL,
    [external_id_source]  VARCHAR (255) NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [parent_id]           INT           NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [security_roles_internal_identifier_idx]
    ON [dbo].[security_roles]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [index_security_roles_on_parent_id]
    ON [dbo].[security_roles]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_security_roles_on_lft]
    ON [dbo].[security_roles]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [index_security_roles_on_rgt]
    ON [dbo].[security_roles]([rgt] ASC);

