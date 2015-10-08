CREATE TABLE [dbo].[AgreementPartyRole] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [AgreementId]        INT           NULL,
    [PartyId]            INT           NULL,
    [RoleTypeId]         INT           NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementPartyRoleOnAgreementId]
    ON [dbo].[AgreementPartyRole]([AgreementId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementPartyRoleOnPartyId]
    ON [dbo].[AgreementPartyRole]([PartyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementPartyRoleOnRoleTypeId]
    ON [dbo].[AgreementPartyRole]([RoleTypeId] ASC);

