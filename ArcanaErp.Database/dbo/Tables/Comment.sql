CREATE TABLE [dbo].[Comment] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [CommentorName]       VARCHAR (255) NULL,
    [Email]               VARCHAR (255) NULL,
    [Comment]             TEXT          NULL,
    [Approved]            INT           NULL,
    [ApprovedAt]          DATETIME      NULL,
    [UserId]             INT           NULL,
    [CommentedRecordId]   INT           NULL,
    [CommentedRecordType] VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CommentedRecordIndex]
    ON [dbo].[Comment]([CommentedRecordId] ASC, [CommentedRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommentsOnapproved]
    ON [dbo].[Comment]([Approved] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommentsOnUsersId]
    ON [dbo].[Comment]([UserId] ASC);

