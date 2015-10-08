CREATE TABLE [dbo].[BusinessTaxationAgreementRole] (
    [Id]                                  INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTaxationEventId]             INT           NULL,
    [BusinessTaxationEventType]           VARCHAR (255) NULL,
    [AgreementId]                         INT           NULL,
    [BusinessTaxationAgreementRoleTypeId] INT           NULL,
    [CreatedAt]                           DATETIME      NOT NULL,
    [UpdatedAt]                           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationAgreementRoleOnAgreementId]
    ON [dbo].[BusinessTaxationAgreementRole]([AgreementId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationAgreementRoleOnBusinessTaxationAgreementRoleTypeId]
    ON [dbo].[BusinessTaxationAgreementRole]([BusinessTaxationAgreementRoleTypeId] ASC);

