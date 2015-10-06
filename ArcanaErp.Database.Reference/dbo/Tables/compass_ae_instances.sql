CREATE TABLE [dbo].[compass_ae_instances] (
    [id]                  INT            IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255)  NULL,
    [internal_identifier] VARCHAR (255)  NULL,
    [version]             DECIMAL (8, 3) NULL,
    [type]                VARCHAR (255)  NULL,
    [schema]              VARCHAR (255)  DEFAULT ('public') NULL,
    [parent_id]           INT            NULL,
    [guid]                VARCHAR (255)  NULL,
    [created_at]          DATETIME       NOT NULL,
    [updated_at]          DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [iid_idx]
    ON [dbo].[compass_ae_instances]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [schema_idx]
    ON [dbo].[compass_ae_instances]([schema] ASC);


GO
CREATE NONCLUSTERED INDEX [type_idx]
    ON [dbo].[compass_ae_instances]([type] ASC);


GO
CREATE NONCLUSTERED INDEX [parent_id_idx]
    ON [dbo].[compass_ae_instances]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [guid_idx]
    ON [dbo].[compass_ae_instances]([guid] ASC);

