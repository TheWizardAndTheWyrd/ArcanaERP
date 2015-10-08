CREATE TABLE [dbo].[Individual] (
    [Id]                        INT            IDENTITY (1, 1) NOT NULL,
    [PartyId]                   INT            NULL,
    [CurrentLastName]           VARCHAR (255)  NULL,
    [CurrentFirstName]          VARCHAR (255)  NULL,
    [CurrentmIddleName]         VARCHAR (255)  NULL,
    [CurrentpersOnalTitle]      VARCHAR (255)  NULL,
    [Currentsuffix]             VARCHAR (255)  NULL,
    [CurrentnickName]           VARCHAR (255)  NULL,
    [gender]                    VARCHAR (1)    NULL,
    [birthDate]                 DATE           NULL,
    [Height]                    DECIMAL (5, 2) NULL,
    [weight]                    INT            NULL,
    [mothersmaIdenName]         VARCHAR (255)  NULL,
    [maritalStatus]             VARCHAR (1)    NULL,
    [socialSecuritynumber]      VARCHAR (255)  NULL,
    [Currentpassportnumber]     INT            NULL,
    [CurrentpassportexpireDate] DATE           NULL,
    [Totalyearsworkexperience]  INT            NULL,
    [Comments]                  VARCHAR (255)  NULL,
    [enCryptedssn]              VARCHAR (255)  NULL,
    [tempssn]                   VARCHAR (255)  NULL,
    [Salt]                      VARCHAR (255)  NULL,
    [ssnLastfour]               VARCHAR (255)  NULL,
    [CreatedAt]                 DATETIME       NOT NULL,
    [UpdatedAt]                 DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexIndividualOnPartyId]
    ON [dbo].[Individual]([PartyId] ASC);

