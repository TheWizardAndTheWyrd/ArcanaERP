CREATE TABLE [dbo].[JobTracker] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [JobName]   VARCHAR (255) NULL,
    [JobClass]  VARCHAR (255) NULL,
    [RunTime]   VARCHAR (255) NULL,
    [LastRunAt] DATETIME      NULL,
    [NextRunAt] DATETIME      NULL,
	[CreatedAt] DATETIME      NOT NULL,
	[UpdatedAt] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

