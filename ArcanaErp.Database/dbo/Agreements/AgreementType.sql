CREATE TABLE [dbo].[AgreementType]
(
	[Id] uniqueidentifier CONSTRAINT AgreementTypeGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL NOT NULL,
	[ParentId] UNIQUEIDENTIFIER NULL, 
    [LeftInt] INT NULL, 
    [RightInt] INT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Comments] NVARCHAR(MAX) NULL, 
    CONSTRAINT AgreementTypeGuid_PK PRIMARY KEY (Id)
)
