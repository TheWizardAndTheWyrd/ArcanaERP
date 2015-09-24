CREATE TABLE [dbo].[AgreementRelationshipType]
(
	[Id] uniqueidentifier CONSTRAINT AgreementRelationshipTypeGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL NOT NULL,
    [ParentId] UNIQUEIDENTIFIER NULL, 
    [LeftInt] INT NULL, 
    [RightInt] INT NULL, 
    [ValidFromRoleTypeId] UNIQUEIDENTIFIER NULL, 
    [ValidToRoleTypeId] UNIQUEIDENTIFIER NULL, 
    [Name] NVARCHAR(MAX) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [InternalIdentifier] NVARCHAR(MAX) NULL, 
    [ExternalIdentifier] NVARCHAR(MAX) NULL, 
    [ExternalIdentifierSource] NVARCHAR(MAX) NULL, 
    CONSTRAINT AgreementRelationshipTypeGuid_PK PRIMARY KEY (Id)
)
