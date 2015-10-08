CREATE TABLE [dbo].[LoyaltyProgramCode] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Identifier]  VARCHAR (255) NULL,
    [Name]        VARCHAR (255) NULL,
    [Description] VARCHAR (255) NULL,
    [CreatedAt]   DATETIME      NOT NULL,
    [UpdatedAt]   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

