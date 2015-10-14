CREATE TABLE [dbo].[RoleTypeWorkEffort] (
    [Id]           INT IDENTITY (1, 1) NOT NULL,
    [RoleTypeId]   INT NULL,
    [WorkEffortId] INT NULL,
	[CreatedAt]    DATETIME NOT NULL,
	[UpdatedAt]    DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [RoleTypeWorkEffortIndex]
    ON [dbo].[RoleTypeWorkEffort]([RoleTypeId] ASC, [WorkEffortId] ASC);

