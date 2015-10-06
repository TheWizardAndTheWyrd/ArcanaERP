CREATE TABLE [dbo].[delayed_jobs] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [priority]   INT           DEFAULT ((0)) NULL,
    [attempts]   INT           DEFAULT ((0)) NULL,
    [handler]    TEXT          NULL,
    [last_error] TEXT          NULL,
    [run_at]     DATETIME      NULL,
    [locked_at]  DATETIME      NULL,
    [failed_at]  DATETIME      NULL,
    [locked_by]  VARCHAR (255) NULL,
    [queue]      VARCHAR (255) NULL,
    [created_at] DATETIME      NOT NULL,
    [updated_at] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [delayed_jobs_priority]
    ON [dbo].[delayed_jobs]([priority] ASC, [run_at] ASC);

