CREATE TABLE [dbo].[job_trackers] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [job_name]    VARCHAR (255) NULL,
    [job_klass]   VARCHAR (255) NULL,
    [run_time]    VARCHAR (255) NULL,
    [last_run_at] DATETIME      NULL,
    [next_run_at] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

