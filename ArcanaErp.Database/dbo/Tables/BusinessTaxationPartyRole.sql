CREATE TABLE [dbo].[BusinessTaxationPartyRole] (
    [Id]                              INT      IDENTITY (1, 1) NOT NULL,
    [BusinessTaxationEventId]         INT      NULL,
    [PartyId]                         INT      NULL,
    [BusinessTaxationPartyRoleTypeId] INT      NULL,
    [CreatedAt]                       DATETIME NOT NULL,
    [UpdatedAt]                       DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationPartyRoleOnBusinessTaxationEventId]
    ON [dbo].[BusinessTaxationPartyRole]([BusinessTaxationEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationPartyRoleOnPartyId]
    ON [dbo].[BusinessTaxationPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationPartyRoleOnBusinessTaxationPartyRoleTypeId]
    ON [dbo].[BusinessTaxationPartyRole]([BusinessTaxationPartyRoleTypeId] ASC);

