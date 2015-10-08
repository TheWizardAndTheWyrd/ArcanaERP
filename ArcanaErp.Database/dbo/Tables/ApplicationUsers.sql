CREATE TABLE [dbo].[ApplicationUsers] (
    [ApplicationId] INT NULL,
    [UsersId]       INT NULL
);


GO
CREATE NONCLUSTERED INDEX [AppUsersAppIndex]
    ON [dbo].[ApplicationUsers]([ApplicationId] ASC);


GO
CREATE NONCLUSTERED INDEX [AppUsersUsersIndex]
    ON [dbo].[ApplicationUsers]([UsersId] ASC);

