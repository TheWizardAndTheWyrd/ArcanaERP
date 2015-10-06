CREATE TABLE [dbo].[parties_security_roles] (
    [party_id]         INT NULL,
    [security_role_id] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [index_parties_security_roles_on_party_id]
    ON [dbo].[parties_security_roles]([party_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_parties_security_roles_on_security_role_id]
    ON [dbo].[parties_security_roles]([security_role_id] ASC);

