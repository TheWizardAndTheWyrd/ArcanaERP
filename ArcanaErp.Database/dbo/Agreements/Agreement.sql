CREATE TABLE [dbo].[Agreement]
(
	[Id] uniqueidentifier CONSTRAINT AgreementGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL,
    [Description] NVARCHAR(MAX),
    [AgreementTypeId] UNIQUEIDENTIFIER NULL, 
    [AgreementStatus] NVARCHAR(MAX) NULL, 
    [ProductId] UNIQUEIDENTIFIER NULL, 
    [AgreementDate] DATETIME NULL, 
    [FromDate] DATETIME NULL, 
    [ThroughDate] DATETIME NULL, 
    [ExternalIdentifier] NVARCHAR(MAX) NULL, 
    [ExternalIdentifierSource] NVARCHAR(MAX) NULL, 
    CONSTRAINT AgreementGuid_PK PRIMARY KEY (Id)
)
