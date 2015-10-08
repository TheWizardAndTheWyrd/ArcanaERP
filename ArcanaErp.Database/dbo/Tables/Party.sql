CREATE TABLE [dbo].[Party] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [Description]          VARCHAR (255) NULL,
    [BusinessPartyId]      INT           NULL,
    [BusinessPartyType]    VARCHAR (255) NULL,
    [ListViewImageId]      INT           NULL,
    [EnterpriseIdentifier] VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Besi1]
    ON [dbo].[Party]([BusinessPartyId] ASC, [BusinessPartyType] ASC);

