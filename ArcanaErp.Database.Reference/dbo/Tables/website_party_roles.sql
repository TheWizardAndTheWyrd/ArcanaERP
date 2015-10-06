CREATE TABLE [dbo].[website_party_roles] (
    [id]           INT      IDENTITY (1, 1) NOT NULL,
    [website_id]   INT      NULL,
    [role_type_id] INT      NULL,
    [party_id]     INT      NULL,
    [created_at]   DATETIME NOT NULL,
    [updated_at]   DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_website_party_roles_on_website_id]
    ON [dbo].[website_party_roles]([website_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_party_roles_on_role_type_id]
    ON [dbo].[website_party_roles]([role_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_party_roles_on_party_id]
    ON [dbo].[website_party_roles]([party_id] ASC);

