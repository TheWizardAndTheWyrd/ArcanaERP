CREATE TABLE [dbo].[audit_log_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [error_code]          VARCHAR (255) NULL,
    [comments]            VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [external_identifier] VARCHAR (255) NULL,
    [external_id_source]  VARCHAR (255) NULL,
    [parent_id]           INT           NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [audit_log_types_internal_identifier_idx]
    ON [dbo].[audit_log_types]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [audit_log_types_parent_id_idx]
    ON [dbo].[audit_log_types]([parent_id] ASC);

