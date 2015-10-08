CREATE TABLE [dbo].[FixedAssetPartyRole] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [PartyId]      INT      NULL,
    [FixedAssetId] INT      NULL,
    [RoleTypeId]   INT      NULL,
    [CreatedAt]    DATETIME NOT NULL,
    [UpdatedAt]    DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

