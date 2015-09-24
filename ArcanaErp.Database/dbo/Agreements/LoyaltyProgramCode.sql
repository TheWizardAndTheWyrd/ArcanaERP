CREATE TABLE [dbo].[LoyaltyProgramCode]
(
	[Id] uniqueidentifier CONSTRAINT LoyaltyProgramCodeGuidDefault DEFAULT NEWSEQUENTIALID() ROWGUIDCOL NOT NULL, 
  
    [Identifier] NVARCHAR(MAX) NULL, 
    [Name] NVARCHAR(MAX) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    CONSTRAINT LoyaltyProgramCodeGuid_PK PRIMARY KEY (Id)
)
