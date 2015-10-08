CREATE TABLE [dbo].[BusinessTaxationAccountPartyRole] (
    [Id]                                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]                        VARCHAR (255) NULL,
    [BusinessTaxationAccountRootId]      INT           NULL,
    [PartyId]                            INT           NULL,
    [BusinessTaxationAccountPartyTypeId] INT           NULL,
    [IsDefaultBillingAccountFlag]        INT           NULL,
    [CreatedAt]                          DATETIME      NOT NULL,
    [UpdatedAt]                          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationAccountPartyRoleOnBusinessTaxationAccountRootId]
    ON [dbo].[BusinessTaxationAccountPartyRole]([BusinessTaxationAccountRootId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationAccountPartyRoleOnPartyId]
    ON [dbo].[BusinessTaxationAccountPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationAccountPartyRoleOnBusinessTaxationAccountPartyTypeId]
    ON [dbo].[BusinessTaxationAccountPartyRole]([BusinessTaxationAccountPartyTypeId] ASC);

