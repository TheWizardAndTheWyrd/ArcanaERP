CREATE TABLE [dbo].[Agreement]
(
	[Id] uniqueidentifier CONSTRAINT Guid_Default DEFAULT NEWSEQUENTIALID() ROWGUIDCOL,
    [Description] NVARCHAR(MAX),
    [AgreementTypeId] UNIQUEIDENTIFIER NULL, 
    [AgreementStatus] NVARCHAR(MAX) NULL, 
    [ProductId] UNIQUEIDENTIFIER NULL, 
    [AgreementDate] DATETIME NULL, 
    [FromDate] DATETIME NULL, 
    [ThroughDate] DATETIME NULL, 
    [ExternalIdentifier] NVARCHAR(MAX) NULL, 
    [ExternalIdentifierSource] NVARCHAR(MAX) NULL, 
    CONSTRAINT Guid_PK PRIMARY KEY (Id)
)
