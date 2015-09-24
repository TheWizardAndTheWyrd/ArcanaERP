CREATE TABLE [dbo].[AgreementItem]
(
	[Id] uniqueidentifier CONSTRAINT AgreementItemGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL NOT NULL,
    [AgreementId] UNIQUEIDENTIFIER NULL, 
    [AgreementItemTypeId] UNIQUEIDENTIFIER NULL, 
    [AgreementItemValue] NVARCHAR(MAX) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [AgreementItemRuleString] NVARCHAR(MAX) NULL, 
    CONSTRAINT AgreementItemGuid_PK PRIMARY KEY (Id)
)
