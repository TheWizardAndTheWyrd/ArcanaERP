CREATE TABLE [dbo].[AgreementItem] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [AgreementId]             INT           NULL,
    [AgreementItemTypeId]     INT           NULL,
    [AgreementItemValue]      VARCHAR (255) NULL,
    [Description]             VARCHAR (255) NULL,
    [AgreementItemRuleString] VARCHAR (255) NULL,
    [CreatedAt]               DATETIME      NOT NULL,
    [UpdatedAt]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementItemOnAgreementId]
    ON [dbo].[AgreementItem]([AgreementId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementItemOnAgreementItemTypeId]
    ON [dbo].[AgreementItem]([AgreementItemTypeId] ASC);

