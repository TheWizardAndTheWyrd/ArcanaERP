﻿CREATE TABLE [dbo].[User] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [UserName]                    VARCHAR (255) NULL,
    [Email]                       VARCHAR (255) NULL,
    [PartyId]                     INT           NULL,
    [Type]                        VARCHAR (255) NULL,
    [Salt]                        VARCHAR (255) NULL,
    [CryptedPassword]             VARCHAR (255) NULL,
    [LastLoginAt]                 DATETIME      NULL,
    [LastLogoutAt]                DATETIME      NULL,
    [LastActivityAt]              DATETIME      NULL,
    [FailedLoginsCount]           INT           DEFAULT ((0)) NULL,
    [LockExpiresAt]               DATETIME      NULL,
    [RememberMeToken]             VARCHAR (255) NULL,
    [RememberMeTokenExpiresAt]    DATETIME      NULL,
    [ResetPasswordToken]          VARCHAR (255) NULL,
    [ResetPasswordTokenExpiresAt] DATETIME      NULL,
    [ResetPasswordEmailsentat]    DATETIME      NULL,
    [ActivationState]             VARCHAR (255) NULL,
    [ActivationToken]             VARCHAR (255) NULL,
    [ActivationTokenExpiresAt]    DATETIME      NULL,
    [SecurityQuestion1]           VARCHAR (255) NULL,
    [SecurityAnswer1]             VARCHAR (255) NULL,
    [SecurityQuestion2]           VARCHAR (255) NULL,
    [SecurityAnswer2]             VARCHAR (255) NULL,
    [AuthToken]                   VARCHAR (255) NULL,
    [AuthTokenExpiresAt]          DATETIME      NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    [UnlockToken]                 VARCHAR (255) DEFAULT (NULL) NULL,
    [LastLoginFromIpAddress]      VARCHAR (255) DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IndexUsersOnEmail]
    ON [dbo].[User]([Email] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IndexUsersOnUserName]
    ON [dbo].[User]([UserName] ASC);


GO
CREATE NONCLUSTERED INDEX [ActivityIndex]
    ON [dbo].[User]([LastLogoutAt] ASC, [LastActivityAt] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersOnRememberMeToken]
    ON [dbo].[User]([RememberMeToken] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersOnResetPasswordToken]
    ON [dbo].[User]([ResetPasswordToken] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexUsersOnActivationToken]
    ON [dbo].[User]([ActivationToken] ASC);


GO
CREATE NONCLUSTERED INDEX [UsersPartyIdIndex]
    ON [dbo].[User]([PartyId] ASC);

