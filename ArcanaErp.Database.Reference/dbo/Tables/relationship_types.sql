CREATE TABLE [dbo].[relationship_types] (
    [id]                      INT           IDENTITY (1, 1) NOT NULL,
    [parent_id]               INT           NULL,
    [lft]                     INT           NULL,
    [rgt]                     INT           NULL,
    [valid_from_role_type_id] INT           NULL,
    [valid_to_role_type_id]   INT           NULL,
    [name]                    VARCHAR (255) NULL,
    [description]             VARCHAR (255) NULL,
    [internal_identifier]     VARCHAR (255) NULL,
    [external_identifier]     VARCHAR (255) NULL,
    [external_id_source]      VARCHAR (255) NULL,
    [created_at]              DATETIME      NOT NULL,
    [updated_at]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_relationship_types_on_valid_from_role_type_id]
    ON [dbo].[relationship_types]([valid_from_role_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_relationship_types_on_valid_to_role_type_id]
    ON [dbo].[relationship_types]([valid_to_role_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [relationship_types_parent_id_idx]
    ON [dbo].[relationship_types]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [relationship_types_internal_identifier_idx]
    ON [dbo].[relationship_types]([internal_identifier] ASC);

