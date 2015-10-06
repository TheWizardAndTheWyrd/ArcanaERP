CREATE TABLE [dbo].[party_relationships] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [description]          VARCHAR (255) NULL,
    [party_id_from]        INT           NULL,
    [party_id_to]          INT           NULL,
    [role_type_id_from]    INT           NULL,
    [role_type_id_to]      INT           NULL,
    [status_type_id]       INT           NULL,
    [priority_type_id]     INT           NULL,
    [relationship_type_id] INT           NULL,
    [from_date]            DATE          NULL,
    [thru_date]            DATE          NULL,
    [external_identifier]  VARCHAR (255) NULL,
    [external_id_source]   VARCHAR (255) NULL,
    [created_at]           DATETIME      NOT NULL,
    [updated_at]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_party_relationships_on_status_type_id]
    ON [dbo].[party_relationships]([status_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_party_relationships_on_priority_type_id]
    ON [dbo].[party_relationships]([priority_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_party_relationships_on_relationship_type_id]
    ON [dbo].[party_relationships]([relationship_type_id] ASC);

