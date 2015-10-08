CREATE TABLE [dbo].[staffingPosition] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [CustomFields]       TEXT          NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

