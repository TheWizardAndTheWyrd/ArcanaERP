CREATE TABLE [dbo].[AgreementRelationship]
(
	[Id] uniqueidentifier CONSTRAINT AgreementRelationshipGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL NOT NULL,
    [AgreementRelationshipTypeId] UNIQUEIDENTIFIER NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [AgreementIdFrom] UNIQUEIDENTIFIER NULL, 
    [AgreementIdTo] UNIQUEIDENTIFIER NULL, 
    [RoleTypeIdFrom] UNIQUEIDENTIFIER NULL, 
    [RoleTypeIdTo] UNIQUEIDENTIFIER NULL, 
    [StatusTypeId] UNIQUEIDENTIFIER NULL, 
    [FromDate] DATETIME NULL, 
    [ThroughDate] DATETIME NULL, 
    CONSTRAINT AgreementRelationshipGuid_PK PRIMARY KEY (Id)
)
