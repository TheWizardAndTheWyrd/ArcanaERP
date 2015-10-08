CREATE TABLE [dbo].[PartySecurityRole] (
    [PartyId]        INT NULL,
    [SecurityRoleId] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [IndexPartySecurityRoleOnPartyId]
    ON [dbo].[PartySecurityRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPartySecurityRoleOnSecurityRoleId]
    ON [dbo].[PartySecurityRole]([SecurityRoleId] ASC);

