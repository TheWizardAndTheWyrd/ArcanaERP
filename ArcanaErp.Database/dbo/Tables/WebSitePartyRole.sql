CREATE TABLE [dbo].[WebSitePartyRole] (
    [Id]         INT      IDENTITY (1, 1) NOT NULL,
    [WebSiteId]  INT      NULL,
    [RoleTypeId] INT      NULL,
    [PartyId]    INT      NULL,
    [CreatedAt]  DATETIME NOT NULL,
    [UpdatedAt]  DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitePartyRoleOnWebSiteId]
    ON [dbo].[WebSitePartyRole]([WebSiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitePartyRoleOnRoleTypeId]
    ON [dbo].[WebSitePartyRole]([RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexWebSitePartyRoleOnPartyId]
    ON [dbo].[WebSitePartyRole]([PartyId] ASC);

