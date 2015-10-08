CREATE TABLE [dbo].[ArcanaErpInstancePartyRole] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [Description]         VARCHAR (255) NULL,
    [ArcanaErpInstanceId] INT           NULL,
    [PartyId]             INT           NULL,
    [RoleTypeId]          INT           NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ArcanaErpInstanceIdIndex]
    ON [dbo].[ArcanaErpInstancePartyRole]([ArcanaErpInstanceId] ASC);


GO
CREATE NONCLUSTERED INDEX [PartyIdIndex]
    ON [dbo].[ArcanaErpInstancePartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [RoleTypeIdIndex]
    ON [dbo].[ArcanaErpInstancePartyRole]([RoleTypeId] ASC);

