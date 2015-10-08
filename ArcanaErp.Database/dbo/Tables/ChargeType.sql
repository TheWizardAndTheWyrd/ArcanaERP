CREATE TABLE [dbo].[ChargeType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    [Taxable]            BIT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

