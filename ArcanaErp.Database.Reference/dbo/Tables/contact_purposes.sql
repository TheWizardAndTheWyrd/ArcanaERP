CREATE TABLE [dbo].[contact_purposes] (
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
CREATE NONCLUSTERED INDEX [index_contact_purposes_on_parent_id]
    ON [dbo].[contact_purposes]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [contact_purposes_internal_identifier_idx]
    ON [dbo].[contact_purposes]([internal_identifier] ASC);

