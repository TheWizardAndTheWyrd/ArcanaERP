CREATE TABLE [dbo].[ProductTypePartyRole] (
    [Id]            INT      IDENTITY (1, 1) NOT NULL,
    [PartyId]       INT      NULL,
    [RoleTypeId]    INT      NULL,
    [ProductTypeId] INT      NULL,
    [CreatedAt]     DATETIME NOT NULL,
    [UpdatedAt]     DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductTypePartyRolePartyIndex]
    ON [dbo].[ProductTypePartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypePartyRoleRoleIndex]
    ON [dbo].[ProductTypePartyRole]([RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypePartyRoleProductTypeIndex]
    ON [dbo].[ProductTypePartyRole]([ProductTypeId] ASC);

