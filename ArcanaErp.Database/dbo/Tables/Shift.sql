CREATE TABLE [dbo].[Shift] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [PartyId]            INT           NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [CustomFields]       TEXT          NULL,
    [ShiftStart]         DATETIME      NULL,
    [ShiftEnd]           DATETIME      NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

