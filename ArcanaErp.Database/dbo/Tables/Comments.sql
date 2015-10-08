CREATE TABLE [dbo].[Comments] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [CommentorName]       VARCHAR (255) NULL,
    [Email]               VARCHAR (255) NULL,
    [Comment]             TEXT          NULL,
    [approved]            INT           NULL,
    [approvedat]          DATETIME      NULL,
    [UsersId]             INT           NULL,
    [CommentedRecordId]   INT           NULL,
    [CommentedRecordType] VARCHAR (255) NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CommentedRecordIndex]
    ON [dbo].[Comments]([CommentedRecordId] ASC, [CommentedRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommentsOnapproved]
    ON [dbo].[Comments]([approved] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommentsOnUsersId]
    ON [dbo].[Comments]([UsersId] ASC);

