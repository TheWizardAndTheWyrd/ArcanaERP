CREATE TABLE [dbo].[AgreementPartyRole]
(
	[Id] uniqueidentifier CONSTRAINT AgreementPartyRoleGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL NOT NULL,
    [AgreementId] UNIQUEIDENTIFIER NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [PartyId] UNIQUEIDENTIFIER NULL, 
    [RoleTypeId] UNIQUEIDENTIFIER NULL, 
    [ExternalIdentifier] NVARCHAR(MAX) NULL, 
    [ExternalIdentifierSource] NVARCHAR(MAX) NULL, 
    CONSTRAINT AgreementPartyRoleGuid_PK PRIMARY KEY (Id)
)
