CREATE TABLE [dbo].[DelayedJob] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [Priority]  INT           DEFAULT ((0)) NULL,
    [Attempts]  INT           DEFAULT ((0)) NULL,
    [handler]   TEXT          NULL,
    [Lasterror] TEXT          NULL,
    [RunAt]     DATETIME      NULL,
    [LockedAt]  DATETIME      NULL,
    [FailedAt]  DATETIME      NULL,
    [LockedBy]  VARCHAR (255) NULL,
    [Queue]     VARCHAR (255) NULL,
    [CreatedAt] DATETIME      NOT NULL,
    [UpdatedAt] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DelayedJobPriority]
    ON [dbo].[DelayedJob]([Priority] ASC, [RunAt] ASC);

