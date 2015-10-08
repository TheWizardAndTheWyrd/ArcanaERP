CREATE TABLE [dbo].[BusinessTaxationRelationship] (
    [Id]                                 INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTaxationRelationshipTypeId] INT           NULL,
    [Description]                        VARCHAR (255) NULL,
    [TaxationEventIdFrom]                INT           NULL,
    [TaxationEventIdTo]                  INT           NULL,
    [StatusTypeId]                       INT           NULL,
    [FromDate]                           DATE          NULL,
    [ThroughDate]                        DATE          NULL,
    [CreatedAt]                          DATETIME      NOT NULL,
    [UpdatedAt]                          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationRelationshipOnBusinessTaxationRelationshipTypeId]
    ON [dbo].[BusinessTaxationRelationship]([BusinessTaxationRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTaxationRelationshipOnStatusTypeId]
    ON [dbo].[BusinessTaxationRelationship]([StatusTypeId] ASC);

