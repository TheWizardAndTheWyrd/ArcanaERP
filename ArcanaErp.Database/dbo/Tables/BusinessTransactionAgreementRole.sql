CREATE TABLE [dbo].[BusinessTransactionAgreementRole] (
    [Id]                                  INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTransactionEventId]             INT           NULL,
    [BusinessTransactionEventType]           VARCHAR (255) NULL,
    [AgreementId]                         INT           NULL,
    [BusinessTransactionAgreementRoleTypeId] INT           NULL,
    [CreatedAt]                           DATETIME      NOT NULL,
    [UpdatedAt]                           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAgreementRoleOnAgreementId]
    ON [dbo].[BusinessTransactionAgreementRole]([AgreementId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAgreementRoleOnBusinessTransactionAgreementRoleTypeId]
    ON [dbo].[BusinessTransactionAgreementRole]([BusinessTransactionAgreementRoleTypeId] ASC);

