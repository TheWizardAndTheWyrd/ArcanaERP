CREATE TABLE [dbo].[TrackedStatusType] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [LeftValue]          INT           NULL,
    [RightValue]         INT           NULL,
    [ParentId]           INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [TrackedStatusTypeIIdIndex]
    ON [dbo].[TrackedStatusType]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexTrackedStatusTypeOnLeftValue]
    ON [dbo].[TrackedStatusType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexTrackedStatusTypeOnRightValue]
    ON [dbo].[TrackedStatusType]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexTrackedStatusTypeOnParentId]
    ON [dbo].[TrackedStatusType]([ParentId] ASC);

