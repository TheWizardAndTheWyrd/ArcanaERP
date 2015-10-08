CREATE TABLE [dbo].[FacilityType] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [Description]             VARCHAR (255) NULL,
    [InternalIdentifier]      VARCHAR (255) NULL,
    [ExternalIdentifier]      VARCHAR (255) NULL,
    [ExternalIdentifersource] VARCHAR (255) NULL,
    [ParentId]                INT           NULL,
    [LeftValue]               INT           NULL,
    [RightValue]              INT           NULL,
    [CreatedAt]               DATETIME      NOT NULL,
    [UpdatedAt]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FacilityTypenestedsetIndex]
    ON [dbo].[FacilityType]([ParentId] ASC, [LeftValue] ASC, [RightValue] ASC);

