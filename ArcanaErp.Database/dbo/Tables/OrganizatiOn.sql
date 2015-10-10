CREATE TABLE [dbo].[Organization] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Description] VARCHAR (255) NULL,
    [TaxIdNumber] VARCHAR (255) NULL,
    [CreatedAt]   DATETIME      NOT NULL,
    [UpdatedAt]   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

