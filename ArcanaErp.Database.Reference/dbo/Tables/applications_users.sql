CREATE TABLE [dbo].[applications_users] (
    [application_id] INT NULL,
    [user_id]        INT NULL
);


GO
CREATE NONCLUSTERED INDEX [app_users_app_idx]
    ON [dbo].[applications_users]([application_id] ASC);


GO
CREATE NONCLUSTERED INDEX [app_users_user_idx]
    ON [dbo].[applications_users]([user_id] ASC);

