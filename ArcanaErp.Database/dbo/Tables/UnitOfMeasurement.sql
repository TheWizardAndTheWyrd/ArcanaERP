CREATE TABLE [dbo].[UnitOfMeasurement] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [Domain]             VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Comments]           VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdsource]   VARCHAR (255) NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [ParentId]           INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexUnitOfMeasurementOnLeftValue]
    ON [dbo].[UnitOfMeasurement]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUnitOfMeasurementOnRightValue]
    ON [dbo].[UnitOfMeasurement]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUnitOfMeasurementOnParentId]
    ON [dbo].[UnitOfMeasurement]([ParentId] ASC);

