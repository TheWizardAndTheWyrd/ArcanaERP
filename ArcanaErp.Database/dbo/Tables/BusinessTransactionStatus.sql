CREATE TABLE [dbo].[BusinessTransactionStatus] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Description] VARCHAR (255) NULL,
    [Comments]    VARCHAR (255) NULL,
    [CreatedAt]   DATETIME      NOT NULL,
    [UpdatedAt]   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

