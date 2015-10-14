﻿CREATE TABLE [dbo].[ProductFeatureValue] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Value]              VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [Description]        VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductftvalsIIdIndex]
    ON [dbo].[ProductFeatureValue]([InternalIdentifier] ASC);

