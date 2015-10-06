CREATE TABLE [dbo].[entity_party_roles] (
    [id]                 INT           IDENTITY (1, 1) NOT NULL,
    [party_id]           INT           NULL,
    [role_type_id]       INT           NULL,
    [entity_record_id]   INT           NULL,
    [entity_record_type] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_entity_party_roles_on_party_id]
    ON [dbo].[entity_party_roles]([party_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_entity_party_roles_on_role_type_id]
    ON [dbo].[entity_party_roles]([role_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [entity_party_roles_entity_record_idx]
    ON [dbo].[entity_party_roles]([entity_record_id] ASC, [entity_record_type] ASC);

