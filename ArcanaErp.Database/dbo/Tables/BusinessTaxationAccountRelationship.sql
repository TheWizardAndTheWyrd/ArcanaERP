CREATE TABLE [dbo].[BusinessTaxationAccountRelationship] (
    [Id]                                        INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTaxationAccountRelationshipTypeId] INT           NULL,
    [Description]                               VARCHAR (255) NULL,
    [BusinessTaxationAccountRootIdFrom]         INT           NULL,
    [BusinessTaxationAccountRootIdTo]           INT           NULL,
    [StatusTypeId]                              INT           NULL,
    [FromDate]                                  DATE          NULL,
    [ThroughDate]                               DATE          NULL,
    [CreatedAt]                                 DATETIME      NOT NULL,
    [UpdatedAt]                                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationAccountRelationshipOnBusinessTaxationAccountRelationshipTypeId]
    ON [dbo].[BusinessTaxationAccountRelationship]([BusinessTaxationAccountRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationAccountRelationshipOnStatusTypeId]
    ON [dbo].[BusinessTaxationAccountRelationship]([StatusTypeId] ASC);

