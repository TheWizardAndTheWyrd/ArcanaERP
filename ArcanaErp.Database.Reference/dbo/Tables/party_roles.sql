CREATE TABLE [dbo].[party_roles] (
    [id]           INT           IDENTITY (1, 1) NOT NULL,
    [type]         VARCHAR (255) NULL,
    [party_id]     INT           NULL,
    [role_type_id] INT           NULL,
    [created_at]   DATETIME      NOT NULL,
    [updated_at]   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_party_roles_on_party_id]
    ON [dbo].[party_roles]([party_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_party_roles_on_role_type_id]
    ON [dbo].[party_roles]([role_type_id] ASC);

