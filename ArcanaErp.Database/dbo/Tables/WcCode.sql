CREATE TABLE [dbo].[WcCode] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [PartyId]            INT           NULL,
    [WcCode]             VARCHAR (255) NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [CustomFields]       TEXT          NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

