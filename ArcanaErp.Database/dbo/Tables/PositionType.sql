CREATE TABLE [dbo].[PositionType] (
    [Id]                      INT            IDENTITY (1, 1) NOT NULL,
    [Description]             VARCHAR (255)  NULL,
    [InternalIdentifier]      VARCHAR (255)  NULL,
    [ExternalIdentifier]      VARCHAR (255)  NULL,
    [ExternalIdSource]		  VARCHAR (255)  NULL,
    [ParentId]                INT            NULL,
    [LeftValue]               INT            NULL,
    [RightValue]              INT            NULL,
    [Title]                   VARCHAR (255)  NULL,
    [BenefitPercent]          DECIMAL (8, 2) NULL,
    [CreatedAt]               DATETIME       NOT NULL,
    [UpdatedAt]               DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPositionTypeOnParentId]
    ON [dbo].[PositionType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPositionTypeOnLeftValue]
    ON [dbo].[PositionType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPositionTypeOnRightValue]
    ON [dbo].[PositionType]([RightValue] ASC);

