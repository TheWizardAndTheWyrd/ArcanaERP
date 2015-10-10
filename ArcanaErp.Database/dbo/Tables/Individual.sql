CREATE TABLE [dbo].[Individual] (
    [Id]                        INT            IDENTITY (1, 1) NOT NULL,
    [PartyId]                   INT            NULL,
    [CurrentLastName]           VARCHAR (255)  NULL,
    [CurrentFirstName]          VARCHAR (255)  NULL,
    [CurrentMiddleName]         VARCHAR (255)  NULL,
    [CurrentPersonalTitle]      VARCHAR (255)  NULL,
    [CurrentSuffix]             VARCHAR (255)  NULL,
    [CurrentNickName]           VARCHAR (255)  NULL,
    [Gender]                    VARCHAR (1)    NULL,
    [BirthDate]                 DATE           NULL,
    [Height]                    DECIMAL (5, 2) NULL,
    [Weight]                    INT            NULL,
    [MothersMaidenName]         VARCHAR (255)  NULL,
    [MaritalStatus]             VARCHAR (1)    NULL,
    [SocialSecurityNumber]      VARCHAR (255)  NULL,
    [CurrentPassportNumber]     INT            NULL,
    [CurrentPassportExpireDate] DATE           NULL,
    [TotalYearsWorkExperience]  INT            NULL,
    [Comments]                  VARCHAR (255)  NULL,
    [EncryptedSsn]              VARCHAR (255)  NULL,
    [TempSsn]                   VARCHAR (255)  NULL,
    [Salt]                      VARCHAR (255)  NULL,
    [SsnLastfour]               VARCHAR (255)  NULL,
    [CreatedAt]                 DATETIME       NOT NULL,
    [UpdatedAt]                 DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexIndividualOnPartyId]
    ON [dbo].[Individual]([PartyId] ASC);

