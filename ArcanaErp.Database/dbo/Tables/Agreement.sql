CREATE TABLE [dbo].[Agreement] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [AgreementTypeId]    INT           NOT NULL,
    [AgreementStatus]    VARCHAR (255) NULL,
    [ProductId]          INT           NOT NULL,
    [AgreementDate]      DATE          NOT NULL,
    [FromDate]           DATE          NOT NULL,
    [ThroughDate]        DATE          NOT NULL,
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

