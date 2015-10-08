CREATE TABLE [dbo].[WorkEffortTypeAssociation] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [WorkEffortTypeAssocType] INT           NULL,
    [WorkEffortTypeIdFrom]    INT           NULL,
    [WorkEffortTypeIdTo]      INT           NULL,
    [Description]             VARCHAR (255) NULL,
    [Comments]                VARCHAR (255) NULL,
    [InternalIdentifier]      VARCHAR (255) NULL,
    [ExternalIdentifier]      VARCHAR (255) NULL,
    [ExternalIdSource]        VARCHAR (255) NULL,
    [CreatedAt]               DATETIME      NOT NULL,
    [UpdatedAt]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

