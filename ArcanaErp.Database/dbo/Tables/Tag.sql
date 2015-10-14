CREATE TABLE [dbo].[Tag] (
    [Id]		INT           IDENTITY (1, 1) NOT NULL,
    [Name]		VARCHAR (255) NULL,
	[CreatedAt] DATETIME	  NOT NULL,
	[UpdatedAt] DATETIME	  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

