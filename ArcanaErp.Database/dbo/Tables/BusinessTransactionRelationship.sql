CREATE TABLE [dbo].[BusinessTransactionRelationship] (
    [Id]                                 INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTransactionRelationshipTypeId] INT           NULL,
    [Description]                        VARCHAR (255) NULL,
    [TransactionEventIdFrom]                INT           NULL,
    [TransactionEventIdTo]                  INT           NULL,
    [StatusTypeId]                       INT           NULL,
    [FromDate]                           DATE          NULL,
    [ThroughDate]                        DATE          NULL,
    [CreatedAt]                          DATETIME      NOT NULL,
    [UpdatedAt]                          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionRelationshipOnBusinessTransactionRelationshipTypeId]
    ON [dbo].[BusinessTransactionRelationship]([BusinessTransactionRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionRelationshipOnStatusTypeId]
    ON [dbo].[BusinessTransactionRelationship]([StatusTypeId] ASC);

