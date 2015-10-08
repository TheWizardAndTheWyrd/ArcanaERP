CREATE TABLE [dbo].[Agreement] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [AgreementTypeId]    INT           NULL,
    [AgreementStatus]    VARCHAR (255) NULL,
    [ProductId]          INT           NULL,
    [AgreementDate]      DATE          NULL,
    [FromDate]           DATE          NULL,
    [ThroughDate]        DATE          NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementOnAgreementTypeId]
    ON [dbo].[Agreement]([AgreementTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementOnProductId]
    ON [dbo].[Agreement]([ProductId] ASC);

