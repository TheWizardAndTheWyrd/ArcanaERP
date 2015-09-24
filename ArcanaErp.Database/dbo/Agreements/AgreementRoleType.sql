CREATE TABLE [dbo].[AgreementRoleType]
(
	[Id] uniqueidentifier CONSTRAINT AgreementRoleTypeGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL NOT NULL, 
	[ParentId] UNIQUEIDENTIFIER NULL, 
    [LeftInt] INT NULL, 
    [RightInt] INT NULL,
	[Description] NVARCHAR(MAX) NULL,    
	[Comments] NVARCHAR(MAX) NULL,
	[InternalIdentifier] NVARCHAR(MAX) NULL, 
    [ExternalIdentifier] NVARCHAR(MAX) NULL, 
    [ExternalIdentifierSource] NVARCHAR(MAX) NULL,  
    CONSTRAINT AgreementRoleTypeGuid_PK PRIMARY KEY (Id)
)
