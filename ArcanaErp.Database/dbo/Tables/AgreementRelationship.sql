CREATE TABLE [dbo].[AgreementRelationship] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [AgreementRelationshipTypeId] INT           NULL,
    [Description]                 VARCHAR (255) NULL,
    [AgreementIdFrom]             INT           NULL,
    [AgreementIdTo]               INT           NULL,
    [RoleTypeIdFrom]              INT           NULL,
    [RoleTypeIdTo]                INT           NULL,
    [StatusTypeId]                INT           NULL,
    [FromDate]                    DATE          NULL,
    [ThroughDate]                 DATE          NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementRelationshipOnAgreementRelationshipTypeId]
    ON [dbo].[AgreementRelationship]([AgreementRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAgreementRelationshipOnStatusTypeId]
    ON [dbo].[AgreementRelationship]([StatusTypeId] ASC);

