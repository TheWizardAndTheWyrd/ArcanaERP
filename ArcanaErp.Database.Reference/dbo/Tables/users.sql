CREATE TABLE [dbo].[users] (
    [id]                              INT           IDENTITY (1, 1) NOT NULL,
    [username]                        VARCHAR (255) NULL,
    [email]                           VARCHAR (255) NULL,
    [party_id]                        INT           NULL,
    [type]                            VARCHAR (255) NULL,
    [salt]                            VARCHAR (255) NULL,
    [crypted_password]                VARCHAR (255) NULL,
    [last_login_at]                   DATETIME      NULL,
    [last_logout_at]                  DATETIME      NULL,
    [last_activity_at]                DATETIME      NULL,
    [failed_logins_count]             INT           DEFAULT ((0)) NULL,
    [lock_expires_at]                 DATETIME      NULL,
    [remember_me_token]               VARCHAR (255) NULL,
    [remember_me_token_expires_at]    DATETIME      NULL,
    [reset_password_token]            VARCHAR (255) NULL,
    [reset_password_token_expires_at] DATETIME      NULL,
    [reset_password_email_sent_at]    DATETIME      NULL,
    [activation_state]                VARCHAR (255) NULL,
    [activation_token]                VARCHAR (255) NULL,
    [activation_token_expires_at]     DATETIME      NULL,
    [security_question_1]             VARCHAR (255) NULL,
    [security_answer_1]               VARCHAR (255) NULL,
    [security_question_2]             VARCHAR (255) NULL,
    [security_answer_2]               VARCHAR (255) NULL,
    [auth_token]                      VARCHAR (255) NULL,
    [auth_token_expires_at]           DATETIME      NULL,
    [created_at]                      DATETIME      NOT NULL,
    [updated_at]                      DATETIME      NOT NULL,
    [unlock_token]                    VARCHAR (255) DEFAULT (NULL) NULL,
    [last_login_from_ip_address]      VARCHAR (255) DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [index_users_on_email]
    ON [dbo].[users]([email] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [index_users_on_username]
    ON [dbo].[users]([username] ASC);


GO
CREATE NONCLUSTERED INDEX [activity_idx]
    ON [dbo].[users]([last_logout_at] ASC, [last_activity_at] ASC);


GO
CREATE NONCLUSTERED INDEX [index_users_on_remember_me_token]
    ON [dbo].[users]([remember_me_token] ASC);


GO
CREATE NONCLUSTERED INDEX [index_users_on_reset_password_token]
    ON [dbo].[users]([reset_password_token] ASC);


GO
CREATE NONCLUSTERED INDEX [index_users_on_activation_token]
    ON [dbo].[users]([activation_token] ASC);


GO
CREATE NONCLUSTERED INDEX [users_party_id_idx]
    ON [dbo].[users]([party_id] ASC);

